ORGS = $(wildcard *.org)
MDS = $(wildcard *.md) $(ORGS:.org=.md)
PDFS = $(MDS:.md=.pdf) 

.PHONY: all clean test

all: $(PDFS)

clean:
	rm *.checked

test: $(MDS)
	@bash lint.sh $(MDS)


%.pdf: %.md
	@md-to-pdf $<
	@evince $@

%.md: %.org
	@pandoc $< -o $@
