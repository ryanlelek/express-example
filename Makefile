#!/usr/bin/make

.PHONY: install
install:
	# Install Node.js Modules
	npm install;

.PHONY: clean
clean:
	# Remove Temporary Files
	rm -rf node_modules/;

.PHONY: test
test:
	# Run Mocha Tests
	./node_modules/mocha/bin/mocha \
		test/;

.PHONY: start
start:
	# Start HTTP Server
	npm start;
