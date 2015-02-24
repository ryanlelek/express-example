
'use strict';

// Modules
var supertest = require('supertest');
var should    = require('should');

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

  it('could also use "should" (alternative example)', function (done) {

    // Using should gives you more control
    // You may not need it and can stick with
    // supertest's "expect()" parameter.
    // It's deceptively simple and powerful.
    // Use what you prefer!

    request.get('/')
      .expect('Content-Type', /html/)
      .expect(200)
      .end(function (error, res) {

        // No Errors Please
        should.not.exist(error);

        // Check Response Body
        // Sending JSON? Use res.body instead
        res.text.should.equal('Hello World');

        // Call done() manually
        done();

      });

  });

});
