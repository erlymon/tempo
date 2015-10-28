.PHONY: deps skiptest tempo eunit test doc clean distclean

REBAR=rebar3

all: tempo eunit

skip_test: tempo

tempo:
	$(REBAR) compile

eunit: tempo
	$(REBAR) eunit skip_deps=true

test: eunit

doc: tempo
	$(REBAR) doc skip_deps=true

clean:
	$(REBAR) clean
	rm -rf priv ebin

distclean: clean
	rm -rf deps
