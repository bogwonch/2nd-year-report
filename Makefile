all: report.pdf report-2.pdf

view: report-2.pdf
	open report-2.pdf

report.pdf: $(wildcard *.bib) $(wildcard *.tex) $(wildcard *.sty)
	latexmk -pdf report
report-2.pdf: $(wildcard *.bib) $(wildcard *.tex) $(wildcard *.sty)
	latexmk -pdf report-2

tidy:
	latexmk -c

clean:
	latexmk -C
