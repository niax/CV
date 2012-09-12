all: cv.pdf

cv.pdf: cv.tex

%.pdf: %.aux
	@pdflatex $(basename $<)

%.aux: %.tex
	pdflatex $<

.PHONY: clean
clean:
	rm -f *.log *.blg *.dvi *.aux *.bbl *.toc *.pdf *-blx.bib *.run.xml *.bcf *.out *.0 *.ps
