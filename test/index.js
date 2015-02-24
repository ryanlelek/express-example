
'use strict';

// Modules
var supertest = require('supertest');

// Prepare the Test
var subject = require('../app/index.js');
var request = supertest(subject);

describe('Home', function () {

  it('should return "Hello World"', function (done) {
    request.get('/')
      .expect('Content-Type', /html/)
      .expect(200)
      .expect('Hello World')
      .end(done);
  });

});
