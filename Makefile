all: manuscrit

show: manuscrit
	xdg-open manuscrit.pdf

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
	pdflatex -jobname=manuscrit manuscrit.tex
	biber manuscrit
	pdflatex -jobname=manuscrit manuscrit.tex

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
