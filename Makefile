#!/usr/bin/make
#

all: bootstrap buildout

.PHONY: bootstrap
bootstrap:
	virtualenv --no-site-packages .
	./bin/python bootstrap.py

.PHONY: buildout
buildout:
	if ! test -f bin/buildout;then make bootstrap;fi
	bin/buildout -vt 5
