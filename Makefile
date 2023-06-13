.PHONY: fmt
fmt:
	js-beautify -r index.js

index.min.js: index.js
	# https://github.com/tdewolff/minify
	minify -o index.min.js index.js

.PHONY: clean
clean:
	rm -f index.min.js
