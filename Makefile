#!/usr/bin/make

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
test:
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
