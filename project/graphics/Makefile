.PHONY: clean

zeitstrahl.png: zeitstrahl.svg
	convert -density 300 -flatten -trim +repage $^ $@

clean:
	rm -f zeitstrahl.png
