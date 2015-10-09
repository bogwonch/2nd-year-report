all: report.pdf

view: report-2.pdf
	open report-2.pdf

report.pdf: $(wildcard *.bib) $(wildcard *.tex) $(wildcard *.sty) gantt.pdf
	latexmk -pdf report

# gantt.pdf: gantt.tex
# 	pdflatex gantt.tex

tidy:
	latexmk -c

clean:
	latexmk -C
