#!/usr/bin/make

.PHONY: install
install:
	# Install Node.js Modules
	npm install;

.PHONY: clean
clean:
	# Remove Temporary Files
	rm -rf node_modules/;

.PHONY: start
start:
	# Start HTTP Server
	npm start;
