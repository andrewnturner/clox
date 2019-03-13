compile:
	docker run --rm -v $(PWD):/usr/src/myapp -w /usr/src/myapp gcc:4.9 gcc -std=c11 -o clox *.c

execute:
	docker run --rm -v $(PWD):/usr/src/myapp -w /usr/src/myapp ubuntu /usr/src/myapp/clox

build-and-run: compile execute