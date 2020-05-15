all: manuscrit

show: manuscrit
	xdg-open Manuscrit.pdf

tikzfigs:
	cd tikz;\
	for dir in *; do\
		if [[ -d $$dir ]]; then\
			echo $$dir;\
			cd $$dir;\
			latexmk -pdf;\
			cd ..;\
		fi;\
	done;\
	cd ..

manuscrit: tikzfigs
	pdflatex -jobname=Manuscrit Manuscrit.tex
	biber Manuscrit
	pdflatex -jobname=Manuscrit Manuscrit.tex

clean:
	rm *.aux *.bbl *.acn *.blg *.brf *.glo *.lof *.log *.lot *.maf *.mtc* *.xdy *.toc *.out *.ntn *.fls *.fdb_latexmk *.synctex.gz *.pdf;\
	cd tikz;\
	for dir in *; do\
		if [[ -d $$dir ]]; then\
			echo $$dir;\
			cd $$dir;\
			rm *.aux *.bbl *.acn *.blg *.brf *.glo *.lof *.log *.lot *.maf *.mtc* *.xdy *.toc *.out *.ntn *.fls *.fdb_latexmk *.synctex.gz *.pdf;\
			cd ..;\
		fi;\
	done;\
	cd ..
