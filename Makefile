
# after `npm install` ANVIL will be located here:
ANVIL=node_modules/.bin/anvil
# for `npm install -g` - which is advised against:
#ANVIL=anvil


.PHONY: all clean

all: lib/postal.diagnostics.js lib/postal.diagnostics.min.js


lib/postal.diagnostics.js lib/postal.diagnostics.min.js:    \
		build.json                                          \
		src/postal.diagnostics.js 							\
		$(ANVIL)	
	$(ANVIL)

$(ANVIL):
	npm install

clean:
	-@rm -f lib/postal.diagnostics.js lib/postal.diagnostics.min.js

superclean: clean
	-@rm -rf node_modules/
	
