#=============================================================================
UUID=maximus@mathematical.coffee.gmail.com
FILES=metadata.json extension.js stylesheet.css
#=============================================================================
default_target: all
.PHONY: clean all zip

clean:
	rm -f $(UUID).zip

# nothing in this target
all:

zip: clean all
	zip -rq $(UUID).zip $(FILES:%=$(UUID)/%)

dev-zip: clean all
	(cd $(UUID); \
		zip -rq ../$(UUID).zip $(FILES))
