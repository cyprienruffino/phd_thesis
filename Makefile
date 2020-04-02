TEX = latexmk -file-line-error -pdf

.PHONY: all view

all : these.pdf

view : these.pdf
	evince these.pdf

these.pdf : these.tex 
	$(TEX) these.tex

clean :  
	rm *.fls *.log *.aux *.fdb_latexmk *.toc *.out *.bbl *.blg *.bcf *.run.xml *.dvi *.pdf