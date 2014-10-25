
'use strict';

// Modules
var express = require('express');

// Application
var app = express();

// Configure
app.set('port', (process.env.PORT || 5000))
app.use(express.static(__dirname + '/public'))

// Home
app.get('/', function (req, res) {
  res.send('Hello World');
});

// Server
app.listen(app.get('port'), function () {
  console.log('HTTP Server Running on Port', app.get('port'));
});
