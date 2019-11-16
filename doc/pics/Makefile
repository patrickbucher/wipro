all: kontextdiagramm.png sequence-2fa.png sequence-retry.png komponentendiagramm.png

kontextdiagramm.png: kontextdiagramm.dot
	dot -Tpng $^ -o $@

sequence-2fa.png: sequence-2fa.uml
	plantuml sequence-2fa.uml

sequence-retry.png: sequence-retry.uml
	plantuml sequence-retry.uml

komponentendiagramm.png: komponentendiagramm.uml
	plantuml komponentendiagramm.uml

clean:
	rm -f kontextdiagramm.png sequence-2fa.png sequence-retry.png komponentendiagramm.png
