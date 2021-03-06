
.PHONY: all
all: venv test

.PHONY: venv
venv:
	tox -e venv

.PHONY:tests test
tests: test
test:
	tox

.PHONY: clean
clean:
	find . -iname '*.pyc' | xargs rm
	rm -rf .tox
