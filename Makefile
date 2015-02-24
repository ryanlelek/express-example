#!/usr/bin/make

.PHONY: install
install:
	# Install Node.js Modules
	npm install;

.PHONY: start
start:
	# Start HTTP Server
	npm start;
