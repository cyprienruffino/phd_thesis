NAME = Cyprien_Ruffino
COMP_TIME= $(shell date +%Y_%m_%d_%T)



all: manuscrit

manuscrit:
	pdflatex -jobname=Manuscrit_$(NAME)_$(COMP_TIME) Manuscrit.tex
	bibtex Manuscrit_$(NAME)_$(COMP_TIME)
	pdflatex -jobname=Manuscrit_$(NAME)_$(COMP_TIME) Manuscrit.tex
	pdflatex -jobname=Manuscrit_$(NAME)_$(COMP_TIME) Manuscrit.tex

clean:
	rm *.aux *.bbl *.acn *.blg *.brf *.glo *.lof *.log *.lot *.maf *.mtc* *.xdy *.toc *.out *.ntn *.fls *.fdb_latexmk *.synctex.gz *.pdf
