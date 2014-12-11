
'use strict';

// Modules
var express = require('express');

// New Application
var app = express();

// Configure
app.set('port', (process.env.PORT || 3000))
app.use(express.static(__dirname + '/public'))

// Home
app.get('/', function (req, res) {
  res.send('Hello World');
});

// Server
app.listen(app.get('port'), function () {
  console.log('HTTP server running on port', app.get('port'));
});
