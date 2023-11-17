ORGS = $(wildcard *.org)
MDS = $(wildcard *.md) $(ORGS:.org=.md)
PDFS = $(MDS:.md=.pdf) 

all: $(PDFS)

%.pdf: %.md
	md-to-pdf $<
	evince $@

%.md: %.org
	pandoc $< -o $@
