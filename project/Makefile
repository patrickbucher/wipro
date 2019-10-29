PDF_PARAMS=-s --pdf-engine=xelatex -V documentclass=scrartcl -V papersize=a4 -V lang=de -V fontsize=11pt
PDF_PARAMS_LANDSCAPE=-s --pdf-engine=xelatex -V documentclass=scrartcl -V papersize=a4 -V lang=de -V fontsize=11pt -V geometry=landscape
FONT_PARAMS=-V mainfont="Vollkorn" -V sansfont="Lato" -V monofont="Inconsolata"
DATE=-V date="`date +'%d.%m.%Y'`"

all: Projektplan.pdf Arbeitsjournal.pdf Rahmenplan.pdf Meilensteinplan.pdf Meilensteinbericht-1.pdf Meilensteinbericht-2.pdf Backlog.pdf

Projektplan.pdf: Projektplan.md
	pandoc $(PDF_PARAMS_LANDSCAPE) $(FONT_PARAMS) $(DATE) $^ -o $@

Arbeitsjournal.pdf: Arbeitsjournal.md
	pandoc $(PDF_PARAMS_LANDSCAPE) $(FONT_PARAMS) $(DATE) $^ -o $@

Rahmenplan.pdf: Rahmenplan.md
	pandoc $(PDF_PARAMS_LANDSCAPE) $(FONT_PARAMS) $(DATE) $^ -o $@

Meilensteinplan.pdf: Meilensteinplan.md
	pandoc $(PDF_PARAMS_LANDSCAPE) $(FONT_PARAMS) $(DATE) $^ -o $@

Meilensteinbericht-1.pdf: Meilensteinbericht-1.md
	pandoc $(PDF_PARAMS) $(FONT_PARAMS) $^ -o $@

Meilensteinbericht-2.pdf: Meilensteinbericht-2.md
	pandoc $(PDF_PARAMS) $(FONT_PARAMS) $^ -o $@

Backlog.pdf: Backlog.md
	pandoc $(PDF_PARAMS) $(FONT_PARAMS) $(DATE) $^ -o $@

clean:
	rm -f Projektplan.pdf Arbeitsjournal.pdf Rahmenplan.pdf Meilensteinplan.pdf Meilensteinbericht-1.pdf Meilensteinbericht-2.pdf Backlog.pdf
