PDF_PARAMS=-s --pdf-engine=xelatex -V documentclass=scrartcl -V papersize=a4 -V lang=de -V fontsize=11pt -V geometry=left=2cm,right=2cm,top=2cm,bottom=4cm
PDF_PARAMS_LANDSCAPE=-s --pdf-engine=xelatex -V documentclass=scrartcl -V papersize=a4 -V lang=de -V fontsize=11pt -V geometry=left=2cm,right=2cm,top=2cm,bottom=4cm,landscape
FONT_PARAMS=-V mainfont="DejaVu Serif" -V sansfont="DejaVu Sans" -V monofont="DejaVu Sans Mono"
DATE=-V date="`date +'%d.%m.%Y'`"

all: Projektplan.pdf Arbeitsjournal.pdf Rahmenplan.pdf Meilensteinplan.pdf Bericht-Meilenstein-1.pdf

Projektplan.pdf: Projektplan.md
	pandoc $(PDF_PARAMS_LANDSCAPE) $(FONT_PARAMS) $(DATE) $^ -o $@

Arbeitsjournal.pdf: Arbeitsjournal.md
	pandoc $(PDF_PARAMS_LANDSCAPE) $(FONT_PARAMS) $(DATE) $^ -o $@

Rahmenplan.pdf: Rahmenplan.md
	pandoc $(PDF_PARAMS_LANDSCAPE) $(FONT_PARAMS) $(DATE) $^ -o $@

Meilensteinplan.pdf: Meilensteinplan.md
	pandoc $(PDF_PARAMS_LANDSCAPE) $(FONT_PARAMS) $(DATE) $^ -o $@

Bericht-Meilenstein-1.pdf: Bericht-Meilenstein-1.md
	pandoc $(PDF_PARAMS) $(FONT_PARAMS) $(DATE) $^ -o $@

clean:
	rm -f Projektplan.pdf Arbeitsjournal.pdf Rahmenplan.pdf Meilensteinplan.pdf Bericht-Meilenstein-1.pdf
