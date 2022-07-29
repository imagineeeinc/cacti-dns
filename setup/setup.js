import fetch from 'node-fetch';
import * as fs from 'node:fs'

let response
let body = "";
(async ()=>{
  response = await fetch('https://raw.githubusercontent.com/AdAway/adaway.github.io/master/hosts.txt');
  body += await response.text();
  response = await fetch('https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt');
  body += await response.text();
  response = await fetch('https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext');
  body += await response.text();

  fs.appendFileSync('/home/hosts', body)
})()