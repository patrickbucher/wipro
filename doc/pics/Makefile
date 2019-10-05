all: kontextdiagramm.png

kontextdiagramm.png: kontextdiagramm.dot
	dot -Tpng $^ -o $@

clean:
	rm -f kontextdiagramm.png
