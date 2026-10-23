import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync,writeFileSync} from 'node:fs';
const run=(...args)=>execFileSync('calcit',args,{encoding:'utf8',maxBuffer:24*1024*1024});
const q=(...args)=>JSON.parse(run('query',...args,'--format','json')).data;
assert.equal(run('-v').trim(),'0.30.1');run('docs','agents','--full');
function canonical(v){
  if(Array.isArray(v))return v.map(canonical);
  if(v&&typeof v==='object')return Object.fromEntries(Object.entries(v).map(([k,x])=>[k,
    k==='__edn_set'?x.map(canonical).sort((a,b)=>JSON.stringify(a).localeCompare(JSON.stringify(b))):canonical(x)]));
  return v;
}
const config=q('config');
const inventory=()=>{
  const all=[],ns=q('ns').namespaces;assert.equal(ns.length,10);
  for(const name of ns){
    const defs=run('query','defs',name).split('\n').filter(l=>/^  \S/.test(l)).map(l=>l.trim().split(' ')[0]);
    assert.equal(defs.length,q('ns',name).definition_count);
    for(const d of defs)all.push(q('def',`${name}/${d}`));
  }
  assert.equal(all.length,98);assert.equal(all.reduce((n,d)=>n+d.tests.length,0),23);
  assert.equal(all.reduce((n,d)=>n+d.examples.length,0),14);return canonical(all);
};
const before=inventory();assert.deepEqual(before,canonical(JSON.parse(readFileSync('acceptance/reviewed.json','utf8'))));
const nsBefore=q('ns','respo-alerts.main');assert.deepEqual(nsBefore,JSON.parse(readFileSync('acceptance/main-namespace.json','utf8')).data);
const method=q('type','calcit.core/Option').methods;
for(const [old,next] of Object.entries({'option:fold':'.fold','option:some?':'.some?','option:none?':'.none?','option:unwrap':'.unwrap','option:unwrap-or':'.unwrap-or'}))
  assert.equal(method.find(m=>m.name===next).definition,'calcit.core/'+old);
const expected=structuredClone(before),counts={option:0,ref:0,constructor:0,mapFold:0};
function normalize(n){
  if(!Array.isArray(n))return n;
  const a=n.map(normalize);
  const methods={'option:fold':'.fold','option:some?':'.some?','option:none?':'.none?','option:unwrap':'.unwrap','option:unwrap-or':'.unwrap-or'};
  if(methods[a[0]]){a[0]=methods[a[0]];counts.option++;}
  if(a[0]==='atom'){assert.equal(a.length,2);a[0]='ref';counts.ref++;}
  if(a[0]==='%{}'){assert.equal(a[1],'PromptEvent');counts.constructor++;return [a[1],...a.slice(2).flat()];}
  if(a[0]==='foldl'){
    assert.ok(['value','v'].includes(a[1]));assert.equal(a.length,4);a[0]='.foldl';a[1]=['.to-list',a[1]];counts.mapFold++;
  }
  return a;
}
for(const d of expected){d.code=normalize(d.code);d.tests=d.tests.map(t=>({...t,code:normalize(t.code)}));d.examples=d.examples.map(normalize);}
assert.deepEqual(counts,{option:8,ref:1,constructor:1,mapFold:2});
const get=id=>expected.find(d=>d.id===id);
const changedContracts=[];
for(const [trait,impl,self] of [
  ['AlertActions','%alert-actions','PluginNodeCursorState'],
  ['DrawerActions','%drawer-actions','PluginNodeCursorState'],
  ['ModalActions','%modal-actions','PluginNodeCursorState'],
  ['ModalMenuActions','%modal-menu-actions','PluginNodeCursorState'],
  ['PromptActions','%prompt-actions','PromptPluginNodeCursorState'],
]){
  for(const [name,result] of [['.render',"'respo.schema/Component"],['.show?',"'Bool"]]){
    const declaration=get('respo-alerts.core/'+trait).code.find(p=>Array.isArray(p)&&p[0]===name);
    assert.equal(declaration[1],':fn');
    declaration[1]=['::',"'Fn",['{}',[':args',['[]',"'respo-alerts.core/"+self]],[':return',result]]];
    const fn=get('respo-alerts.core/'+impl).code.find(p=>Array.isArray(p)&&p[0]===name)[1];
    assert.deepEqual(fn.slice(0,2),['fn',['self']]);assert.equal(fn[2][0],'hint-fn');
    fn[2]=['hint-fn',['{}',[':args',['[]',"'respo-alerts.core/"+self]],[':return',result]]];
    changedContracts.push(trait+'/'+name);
  }
}
// Prompt104: the submitted argument is String, but its result is deliberately
// ignored. Preserve arbitrary R rather than rejecting valid value-returning tasks.
const dispatch=['::',"'Fn",['{}',[':args',['[]',"'Enum"]],[':return',"'Unit"]]];
const task=['::',"'Fn",['{}',[':return',"'R"],[':args',['[]',"'String"]]]];
const promptSelf="'respo-alerts.core/PromptPluginNodeCursorState";
for(const [name,args] of [['.show',[promptSelf,dispatch,task]],['.close',[promptSelf,dispatch]]]){
  const fields=['{}',[':args',['[]',...args]],[':return',"'Unit"]];
  if(name==='.show')fields.push([':generics',['[]',"'R"]]);
  const declaration=get('respo-alerts.core/PromptActions').code.find(p=>Array.isArray(p)&&p[0]===name);
  assert.equal(declaration[1],':fn');declaration[1]=['::',"'Fn",fields];
  const fn=get('respo-alerts.core/%prompt-actions').code.find(p=>Array.isArray(p)&&p[0]===name)[1];
  assert.equal(fn[2][0],'hint-fn');fn[2]=['hint-fn',fields];changedContracts.push('PromptActions/'+name);
}
const adapter=get('respo-alerts.core/as-prompt-task');
assert.equal(adapter.schema.find(p=>Array.isArray(p)&&p[0]===':args')[1][1],"'Fn");
adapter.schema.find(p=>Array.isArray(p)&&p[0]===':args')[1][1]=task;
adapter.schema.splice(adapter.schema.findIndex(p=>Array.isArray(p)&&p[0]===':return'),0,[':generics',['[]',"'R"]]);
const mount=get('respo-alerts.main/mount-target');
assert.deepEqual(mount.code,['defn','mount-target',[],['.unwrap',['browser/query-selector','|.app']]]);
mount.code[3][1][0]='respo-browser/query-selector';
const ret=mount.schema.find(p=>Array.isArray(p)&&p[0]===':return');
assert.equal(ret[1],"'js-ffi.browser/DomElementHost");ret[1]="'respo.dom/DomElement";
const render=get('respo-alerts.main/render-app!');
assert.deepEqual(render.code[3][1],['narrow-element',['mount-target']]);render.code[3][1]=['mount-target'];
const nsAfter=structuredClone(nsBefore),rule=nsAfter.ns_code[2].find(r=>r[0]==='respo.ffi.browser');
assert.deepEqual(rule,['respo.ffi.browser',':refer',['narrow-element']]);rule.splice(1,2,':as','respo-browser');
const ops=[['edit','add-import','respo-alerts.main','--overwrite','--input-format','json-ast','--code',JSON.stringify(rule)]];
for(let i=0;i<before.length;i++){
  const a=before[i],b=expected[i];
  if(JSON.stringify(a.code)!==JSON.stringify(b.code))ops.push(['edit','def',b.id,'--overwrite','--input-format','json-ast','--code',JSON.stringify(b.code)]);
  if(JSON.stringify(a.schema)!==JSON.stringify(b.schema))ops.push(['edit','schema',b.id,'--input-format','json-ast','--code',JSON.stringify(['::',"'Fn",['{}',...b.schema.slice(1).filter(p=>p[0]!==':kind')]])]);
  for(let t=0;t<a.tests.length;t++)if(JSON.stringify(a.tests[t])!==JSON.stringify(b.tests[t]))
    ops.push(['edit','add-test',b.id,b.tests[t].name,'--overwrite','--tags',b.tests[t].tags.join(','),'--input-format','json-ast','--code',JSON.stringify(b.tests[t].code)]);
  if(JSON.stringify(a.examples)!==JSON.stringify(b.examples))throw new Error('Unexpected example rewrite');
}
writeFileSync('acceptance/before.json',JSON.stringify(before,null,2));
writeFileSync('acceptance/operations.json',JSON.stringify(ops,null,2));
const args=['edit','transaction','--file','acceptance/operations.json','--format','json'];
const preview=JSON.parse(run(...args,'--dry-run'));assert.ok(preview.scoped_revision);
writeFileSync('acceptance/preview.json',JSON.stringify(preview,null,2));
writeFileSync('acceptance/applied.json',run(...args,'--expect-revision',preview.scoped_revision));
assert.deepEqual(inventory(),expected,'All98views retain originalcallbacks/Confirm/styles/cursor/FFI/docs/tests/examples except reviewed forms and actual rendering contracts');
assert.deepEqual(q('ns','respo-alerts.main'),nsAfter);assert.deepEqual(q('config'),config);
writeFileSync('acceptance/after.json',JSON.stringify(expected,null,2));
writeFileSync('acceptance/preserved.json',JSON.stringify({definitions:98,namespaces:10,tests:23,examples:14,...counts,changedContracts,promptTaskArgumentString:true,ignoredPromptReturnGenericR:true,promptCallbackRuntimeUnchanged:true,mountElementTypeFromRespoProvider:true,hudAndCallbacksUnchanged:true},null,2));
writeFileSync('acceptance/snapshot-blob.txt',execFileSync('git',['hash-object','calcit.cirru'],{encoding:'utf8'}));
