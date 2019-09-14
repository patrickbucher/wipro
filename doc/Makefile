all: document.pdf

document.pdf: document.tex document.bbl document.toc
	xelatex document.tex

document.bbl: document.aux document.bib
	bibtex document

document.toc: document.tex
	xelatex document.tex

document.aux:
	xelatex document.tex

clean:
	rm -f *.bbl *.toc *.aux *.out *.blg *.log *.lof *.lot
