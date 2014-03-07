BIN = 'npm bin'

	lib/parser.ja: lib/grammar.jison lib.tokens.jisonlex
	${BIN}/jison $^ -0 $@

	test: lib/parser.js
	 ${BIN}/mocha --reporter spec

	watch:
	${BIN}/nodemon -x 'make test' -e 'js jison jisonlex'


.PHONY: test watch
