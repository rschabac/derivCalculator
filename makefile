MAKEFILE_DIR=$(dir $(realpath $(firstword $(MAKEFILE_LIST))))
deriv: src/ast.ml src/deriv.ml src/parser.mly src/lexer.mll
	cd src && dune build deriv.exe
	rm -f $(MAKEFILE_DIR)deriv
	ln -s $(MAKEFILE_DIR)_build/default/src/deriv.exe $(MAKEFILE_DIR)deriv

