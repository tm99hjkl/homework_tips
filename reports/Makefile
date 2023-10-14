SRCS = $(wildcard *.md)
PDFS = $(SRCS:.md=.pdf) 

.PHONY: all

all: $(PDFS)

%.pdf: %.md
	md-to-pdf $<
	evince $@
