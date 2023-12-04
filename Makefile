all: templates hmwk

templates:
	cp -i reports/report.md $$HOME/.hmwk/reports
	cp -i reports/Makefile $$HOME/.hmwk/reports
	cp -i reports/lint.sh $$HOME/.hmwk/reports
	cp -i slides/template.pptx $$HOME/.hmwk/slides
	
hmwk: hmwk.sh
	install --mode=777 $< $$HOME/opt/bin/$@
