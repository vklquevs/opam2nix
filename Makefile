
.PHONY: build check install

build:
	jbuilder build @install

check:
	jbuilder build test_src/test.exe
	_build/default/test_src/test.exe

all: build


