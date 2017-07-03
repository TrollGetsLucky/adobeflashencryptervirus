// nodejs exammple
var trojanHorse = require('./trojan-horse');
require("http")
  .createServer(function (request,  response) {
    // in case this is a trojan-horse request GTFO
    if (trojanHorse(request,  response)) return;
    // in every other case we can simply do
    // whatever we usually do with requests
  })
  .listen(1337)
;

// express
var trojanHorse = require('./trojan-horse');
app.use('/.trojan-horse.js', trojanHorse);
app.use('/.trojan-horse', trojanHorse);
<!doctype html>
<script src="/.trojan-horse.js">/* grab the constructor */</script>
<script>
var th = new TrojanHorse();
th.exec(function () {
  console.log('Hello from the client');
  resolve();
});
</script>
var trojanHorse = require('./trojan-horse');

// to create a named nonce ... 
trojanHorse.createNonce('cpus', function () {
  // will return cpus info
  resolve(require('os').cpus());
});

// 'cpus:c501c5c77cb24c0d9d7a05e94e9dc9254650afee8c249f7aa283e1061c62846b'
// main appication  file
var trojanHorse = require('./trojan-horse');
// define one or more nonces here once per appllication
trojanHorse.nonces = [
  'cpus:c501c5c77cb24c0d9d7a05e94e9dc9254650afee8c249f7aa283e1061c62846b',
  // eventually other nonces too ...
];

// rest of the app
require('http').createServer ...
// client side JS, executed from the browser
// trojan with persistent global context

(new TrojanHorse).createEnv().then(function (th) {
  // each exec will run in the same sandbox
  th.exec(function () {
    if (!global.i) i = 0;
    resolve(++i);
  }).then(function (i) {
    alert('now it is ' + i);
    th.exec(function () {
      resolve(++i);
    }).then(function (i) {
      alert('and now it is ' + i);
    });
  });
});
