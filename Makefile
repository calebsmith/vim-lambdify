SHELL = /bin/bash

.PHONY: build test

default:
	make clean
	make test

test:
	if [[ -d ~/.vim/after/syntax ]] ; then \
		mkdir -p ~/.vim/after/syntax; \
		mkdir -p ~/.vim/autoload; \
	fi; \
	cp after/syntax/*.vim ~/.vim/after/syntax;
	cp autoload/*.vim ~/.vim/autoload;

build:
	tar -cvf vim-lambdify.tar after/ autoload/;

clean:
	if [[ -f ~/.vim/after/syntax/python.vim ]] ; then \
		rm ~/.vim/after/syntax/*.vim; \
		rm ~/.vim/autoload/vimlambdify.vim; \
	fi; \
	if [[ -d ~/.vim/bundle/vim-lambdify ]] ; then \
		rm -rf ~/.vim/bundle/vim-lambdify; \
	fi; \
	if [[ -f vim-lambdify.tar ]] ; then \
		rm vim-lambdify.tar; \
	fi;
