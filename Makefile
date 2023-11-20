hmwk: hmwk.sh
	cp reports/report.md $$HOME/.hmwk/reports
	cp reports/Makefile $$HOME/.hmwk/reports
	cp slides/template.pptx $$HOME/.hmwk/slides
	install --mode=777 $< $$HOME/opt/bin/$@
