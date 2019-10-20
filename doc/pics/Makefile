all: kontextdiagramm.png sequence-2fa.png

kontextdiagramm.png: kontextdiagramm.dot
	dot -Tpng $^ -o $@

sequence-2fa.png: sequence-2fa.uml
	plantuml sequence-2fa.uml

clean:
	rm -f kontextdiagramm.png sequence-2fa.png
