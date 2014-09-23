SHELL = /bin/bash

.PHONY: build test

test:
	if ! [[ -d ~/.vim/after/syntax ]] ; then \
		mkdir -p ~/.vim/after/syntax; \
	fi; \
	cp after/syntax/*.vim ~/.vim/after/syntax;

build:
	tar -cvf vim-lambdify.tar after/;

clean:
	if [[ -f ~/.vim/after/syntax/*.vim ]] ; then \
		rm ~/.vim/after/syntax/*.vim; \
	fi; \
	if [[ -f vim-lambdify.tar ]] ; then \
		rm vim-lambdify.tar; \
	fi;
