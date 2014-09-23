SHELL = /bin/bash

.PHONY: build test

default:
	make clean
	make test

test:
	if ! [[ -d ~/.vim/after/syntax ]] ; then \
		mkdir -p ~/.vim/after/syntax; \
	fi; \
	cp after/syntax/*.vim ~/.vim/after/syntax;

build:
	tar -cvf vim-lambdify.tar after/;

clean:
	if [[ -f ~/.vim/after/syntax/python.vim ]] ; then \
		rm ~/.vim/after/syntax/*.vim; \
	fi; \
	if [[ -d ~/.vim/bundle/vim-lambdify ]] ; then \
		rm -rf ~/.vim/bundle/vim-lambdify; \
	fi; \
	if [[ -f vim-lambdify.tar ]] ; then \
		rm vim-lambdify.tar; \
	fi;
