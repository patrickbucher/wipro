.PHONY: all clean

all: document.pdf

document.pdf: document.tex document.bbl document.toc
	xelatex document.tex >>xelatex.out
	xelatex document.tex >>xelatex.out

document.bbl: document.aux document.bib
	bibtex document >bibtex.out

document.aux: document.tex
	xelatex document.tex >xelatex.out

clean:
	rm -f *.bbl *.toc *.aux *.out *.blg *.log *.lof *.lot *.lol *.lol *.out *.err
