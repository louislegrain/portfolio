.PHONY: all create_dir static error_pages clean

TARGETS := static error_pages dist/index.html

all: $(TARGETS)

create_dir:
	mkdir -p dist/

dist/%.html: %.typ create_dir
	typst compile -f html --features html $< $@

static: create_dir
	cp -r static/* dist/
	cp resume/resume.pdf dist/assets/resume_louis_legrain.pdf

error_pages: create_dir
	for code in 400 401 403 404 500; do \
		typst compile -f html --features html --input code=$$code error.typ dist/$$code.html; \
	done

clean:
	rm -rf dist/
