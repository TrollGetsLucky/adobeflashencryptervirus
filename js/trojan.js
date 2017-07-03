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
