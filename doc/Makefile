.PHONY: all clean

all: document.pdf

document.pdf: document.tex document.bbl document.toc
	xelatex document.tex >>xelatex.out 2>>xelatex.err || exit 1
	xelatex document.tex >>xelatex.out 2>>xelatex.err

document.bbl: document.aux document.bib
	bibtex document >bibtex.out 2>bibtex.err

document.aux: document.tex
	xelatex document.tex >xelatex.out 2>xelatex.err

clean:
	rm -f *.bbl *.toc *.aux *.out *.blg *.log *.lof *.lot *.lol *.lol *.out *.err
