
'use strict';

// Modules
var express = require('express');

// New Application
var app = express();

// Configure
app.set('port', (process.env.PORT || 3000));
app.use(express.static(__dirname + '/public'));

// Home
app.get('/', function (req, res) {
  res.send('Hello World');
});

// Export App
module.exports = app;
