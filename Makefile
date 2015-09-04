all: report-2.pdf

view: report-2.pdf
	open report-2.pdf

report.pdf: $(wildcard *.bib) $(wildcard *.tex) $(wildcard *.sty)
	latexmk -pdf report
report-2.pdf: $(wildcard *.bib) $(wildcard *.tex) $(wildcard *.sty) gantt.pdf
	latexmk -f -pdf report-2

# gantt.pdf: gantt.tex
# 	pdflatex gantt.tex

tidy:
	latexmk -c

clean:
	latexmk -C
