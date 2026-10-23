import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync, writeFileSync} from 'node:fs';
const run=(...args)=>execFileSync('calcit',args,{encoding:'utf8',maxBuffer:12*1024*1024});
const query=(...args)=>JSON.parse(run('query',...args,'--format','json')).data;
assert.equal(run('-v').trim(),'0.30.1');
run('docs','agents','--contract');
const config=query('config');
const inventory=()=>{
  const all=[], namespaces=query('ns').namespaces;
  assert.equal(namespaces.length,8);
  for(const ns of namespaces){
    const names=run('query','defs',ns).split('\n').filter(l=>/^  \S/.test(l)).map(l=>l.trim().split(' ')[0]);
    assert.equal(names.length,query('ns',ns).definition_count);
    for(const name of names)all.push(query('def',`${ns}/${name}`));
  }
  assert.equal(all.length,27);return all;
};
const before=inventory();
assert.deepEqual(before,JSON.parse(readFileSync(new URL('./shelf-reviewed.json',import.meta.url),'utf8')));
const expected=structuredClone(before),operations=[];
let count=0;
for(const id of ['app.comp.container/comp-note','app.comp.container/comp-container']){
  const definition=expected.find(d=>d.id===id);
  let local=0;
  function visit(node,path=[]){
    if(!Array.isArray(node))return;
    if(node[0]==='.show'&&['note-plugin','create-plugin'].includes(node[1])){
      const callback=node[3];
      assert.deepEqual(callback.slice(0,2),['fn',['raw']]);
      assert.equal(callback[2][0],'let');
      assert.deepEqual(callback[2][1][0],['result',['decode-map-as','raw',"'String"]]);
      const hint=['hint-fn',['{}',[':args',['[]',"'String"]],[':return',"'Unit"]]];
      operations.push(['tree','insert-before',id,'--path','@'+[...path,3,2].join('.'),
        '--input-format','json-ast','--code',JSON.stringify(hint)]);
      callback.splice(2,0,hint);local++;count++;return;
    }
    node.forEach((child,index)=>visit(child,[...path,index]));
  }
  visit(definition.code);assert.equal(local,1,id);
}
assert.equal(count,2);
const out=process.argv[2];assert.ok(out);
writeFileSync(out+'/shelf-before.json',JSON.stringify(before,null,2));
writeFileSync(out+'/shelf-operations.json',JSON.stringify(operations,null,2));
const transaction=['edit','transaction','--file',out+'/shelf-operations.json','--format','json'];
const preview=JSON.parse(run(...transaction,'--dry-run'));assert.ok(preview.scoped_revision);
writeFileSync(out+'/shelf-preview.json',JSON.stringify(preview,null,2));
writeFileSync(out+'/shelf-applied.json',run(...transaction,'--expect-revision',preview.scoped_revision));
assert.deepEqual(inventory(),expected,'All27definitions: only two actual String->Unit callback hints; original decoders, Map storage, dispatch, HUD/reload, tests and metadata retained');
assert.deepEqual(query('config'),config);
writeFileSync(out+'/shelf-after.json',JSON.stringify(expected,null,2));
writeFileSync(out+'/shelf-snapshot-blob.txt',execFileSync('git',['hash-object','calcit.cirru'],{encoding:'utf8'}));
