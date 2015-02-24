
'use strict';

// Load App
var app = require('./app/index.js');

// HTTP Server
app.listen(app.get('port'), function () {
  console.log('HTTP server running on port', app.get('port'));
});
