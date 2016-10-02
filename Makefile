file = togglesu.zip
inputs = $(shell find . -type f \! -path './.git/*' \! -name $(file))

$(file): $(inputs)
	zip -r $@ . -x '.git/*' -x Makefile

clean:
	rm $(file)
