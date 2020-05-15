all: manuscrit

show: manuscrit
	xdg-open Manuscrit.pdf

manuscrit:
	pdflatex -jobname=Manuscrit Manuscrit.tex
	biber Manuscrit
	pdflatex -jobname=Manuscrit Manuscrit.tex
	pdflatex -jobname=Manuscrit Manuscrit.tex

clean:
	rm *.aux *.bbl *.acn *.blg *.brf *.glo *.lof *.log *.lot *.maf *.mtc* *.xdy *.toc *.out *.ntn *.fls *.fdb_latexmk *.synctex.gz *.pdf
