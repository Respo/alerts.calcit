import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync,writeFileSync,mkdirSync} from 'node:fs';
assert.equal(process.env.GITHUB_ACTIONS,'true');assert.equal(process.platform,'linux');
assert.equal(execFileSync('calcit',['-v'],{encoding:'utf8'}).trim(),'0.30.1');
const run=(...a)=>execFileSync('calcit',['calcit.cirru',...a],{encoding:'utf8',maxBuffer:48e6,stdio:['ignore','pipe','pipe']});
const blob=()=>execFileSync('git',['hash-object','calcit.cirru'],{encoding:'utf8'}).trim();
assert.equal(blob(),'ddf9526276baa40ac7afc4a3eeafb5fbd3c5c32e');
const norm=v=>Array.isArray(v)?v.map(norm):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,k==='__edn_set'?x.map(norm).sort((a,b)=>JSON.stringify(a).localeCompare(JSON.stringify(b))):norm(x)])):v;
const q=(...a)=>norm(JSON.parse(run('query',...a,'--format','json')).data);
const input=JSON.parse(readFileSync('reviewed.json','utf8'));
const before={config:norm(input.config.data),namespaces:input.namespaces.map(x=>norm(x.data)),defs:input.definitions.map(x=>norm(x.data))};
assert.equal(before.config.version,'0.10.58');before.config.version='0.10.59';
assert.equal(before.defs.length,98);assert.equal(before.namespaces.length,10);assert.equal(before.defs.reduce((n,d)=>n+d.tests.length,0),23);
assert.deepEqual(q('config'),before.config);assert.deepEqual(q('ns').namespaces.map(n=>q('ns',n)),before.namespaces);for(const d of before.defs)assert.deepEqual(q('def',d.id),d);
const expected=structuredClone(before),ops=[],sites=[];
const show=(id,path)=>JSON.parse(run('tree','show',id,'--path','@'+path.join('.'),'--format','json')).tree;
function replace(id,path,old,value){assert.deepEqual(show(id,path),old);ops.push(['tree','replace',id,'--path','@'+path.join('.'),'--input-format','json-ast','--code',JSON.stringify(value)]);sites.push({id,path,before:old,after:value});}
const dispatch=['::',"'Fn",['{}',[':args',['[]',"'Enum"]],[':return',"'R"]]];
const contract=['{}',[':args',['[]',"'respo-alerts.core/PluginNodeCursorState",dispatch]],[':return',"'R"],[':generics',['[]',"'R"]]];
const trait=expected.defs.find(d=>d.id==='respo-alerts.core/ModalActions');
const impl=expected.defs.find(d=>d.id==='respo-alerts.core/%modal-actions');
for(const method of ['.show','.close']){
  const ti=trait.code.findIndex(p=>Array.isArray(p)&&p[0]===method);
  assert.equal(trait.code[ti][1],':fn');replace(trait.id,[ti,1],':fn',['::',"'Fn",contract]);trait.code[ti][1]=structuredClone(['::',"'Fn",contract]);
  const ii=impl.code.findIndex(p=>Array.isArray(p)&&p[0]===method);
  const original=impl.code[ii][1];assert.deepEqual(original[2],['hint-fn',['{}',[':args',['[]',"'Dynamic","'Fn"]],[':return',"'Dynamic"]]]);
  const name=method==='.show'?'show-modal!':'close-modal!';
  const id='respo-alerts.core/'+name;assert.ok(!expected.defs.some(d=>d.id===id));
  const code=['defn',name,original[1],['hint-fn',contract],...original.slice(3)];
  const schema=['{}',[':kind',':fn'],...contract.slice(1)];
  const helper={...structuredClone(impl),id,code,schema,tests:[]};
  ops.push(['edit','def',id,'--input-format','json-ast','--code',JSON.stringify(code)]);
  ops.push(['edit','schema',id,'--input-format','json-ast','--code',JSON.stringify(['::',"'Fn",contract])]);
  expected.defs.push(helper);
  replace(impl.id,[ii,1],original,name);impl.code[ii][1]=name;
}
expected.namespaces.find(n=>n.namespace==='respo-alerts.core').definition_count+=2;
const eventArgs=q('def','respo.schema/EventHandler').schema.find(p=>Array.isArray(p)&&p[0]===':args')[1];
assert.deepEqual(eventArgs,['[]',['::',"'Map","'Tag","'Dynamic"],['::',"'Fn",['{}',[':rest',"'Dynamic"],[':return',"'Unit"],[':args',['[]',"'Dynamic"]]]]]);
let buttons=0;
const demo=expected.defs.find(d=>d.id==='respo-alerts.comp.container/comp-controlled-modals');
function walk(x,path){if(!Array.isArray(x)||['quote','quasiquote',';','comment'].includes(x[0]))return x;
  if(JSON.stringify(x)===JSON.stringify(['fn',['e','d!'],['.show','demo-modal','d!']])){
    const value=['fn',['e','d!'],['hint-fn',['{}',[':args',eventArgs],[':return',"'Unit"]]],x[2]];
    replace(demo.id,path,x,value);buttons++;return structuredClone(value);
  }return x.map((v,i)=>walk(v,[...path,i]));}
demo.code=walk(demo.code,[]);assert.equal(buttons,1);
const node=['respo.schema/Component',':name',':modal-contract',':effects',['[]'],':listeners',['[]'],':tree',['Option',':none']];
const numberDispatch=['fn',['op'],['hint-fn',['{}',[':args',['[]',"'Enum"]],[':return',"'Number"]]],['reset!','calls',['.append','@calls','op']],'42'];
const unitDispatch=['fn',['op'],['hint-fn',['{}',[':args',['[]',"'Enum"]],[':return',"'Unit"]]],'&unit'];
const inspect=(which,visible)=>['match',['.unwrap',[which,'@calls']],
  [[':states','received-cursor','received-state'],['do',['assert=','cursor','received-cursor'],['assert=',['Option',':some',visible],['get','received-state',':show?']]]],
  ['_',['assert=','true','false']]];
const test={name:'preserves-dispatch-return-and-visibility',tags:['regression','unit'],code:['let',[
  ['cursor',['[]',':modal-contract']],['plugin',['modal-actions-plugin',':plugin',node,'cursor',['{}']]],['calls',['ref',['[]']]],['dispatch!',numberDispatch],['unit-dispatch!',unitDispatch]],
  ['assert=','42',['.show','plugin','dispatch!']],['assert=','42',['.close','plugin','dispatch!']],['assert=','2',['.len','@calls']],
  inspect('first','true'),inspect('last','false'),['assert=','&unit',['.show','plugin','unit-dispatch!']],['assert=','&unit',['.close','plugin','unit-dispatch!']]]};
assert.equal(impl.tests.length,0);impl.tests.push(test);
ops.push(['edit','add-test',impl.id,test.name,'--input-format','json-ast','--code',JSON.stringify(test.code),'--tags',test.tags.join(',')]);
assert.equal(ops.length,10);assert.equal(expected.defs.length,100);
for(const d of before.defs){const e=expected.defs.find(x=>x.id===d.id);for(const k of Object.keys(d).filter(k=>!['code','tests'].includes(k)))assert.deepEqual(e[k],d[k]);if(d.id!==impl.id)assert.deepEqual(e.tests,d.tests);if(![trait.id,impl.id,demo.id].includes(d.id))assert.deepEqual(e.code,d.code);}
mkdirSync('acceptance',{recursive:true});for(const[name,value]of Object.entries({before,expected,sites,operations:ops}))writeFileSync('acceptance/'+name+'.json',JSON.stringify(value,null,2));
const txn=['edit','transaction','--file','acceptance/operations.json','--format','json'];const preview=JSON.parse(run(...txn,'--dry-run'));assert.ok(preview.scoped_revision);
writeFileSync('acceptance/preview.json',JSON.stringify(preview,null,2));writeFileSync('acceptance/applied.json',run(...txn,'--expect-revision',preview.scoped_revision));
const after={config:q('config'),namespaces:q('ns').namespaces.map(n=>q('ns',n)),defs:expected.defs.map(d=>q('def',d.id))};assert.deepEqual(after,expected);
writeFileSync('acceptance/after.json',JSON.stringify(after,null,2));writeFileSync('acceptance/snapshot-after-blob.txt',blob());
