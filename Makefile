#!/usr/bin/make

# The first command listed is the default
.PHONY: default
default: clean install;

.PHONY: install
install:
	# Install Node.js Modules
	npm install;

.PHONY: clean
clean:
	# Remove Temporary Files
	rm -rf ./node_modules/;
	rm -rf ./coverage/;

.PHONY: test
test: delint coverage;

.PHONY: delint
delint:
	# Delint with JSHint
	./node_modules/jshint/bin/jshint \
		app/ \
		test/ \
		server.js;

.PHONY: integration
integration:
	# Run Mocha Tests
	./node_modules/mocha/bin/mocha \
		--recursive \
		-R spec \
		test/;

.PHONY: coverage
coverage:
	# Code Coverage Check
	./node_modules/istanbul/lib/cli.js cover \
	./node_modules/mocha/bin/_mocha -- \
		--recursive \
		-R spec \
		test/;

.PHONY: report
report:
	# Open Code Coverage Report in Browser (OS X)
	open ./coverage/lcov-report/index.html;

.PHONY: start
start:
	# Start HTTP Server
	node ./server.js;
