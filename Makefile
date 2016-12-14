relatorio.pdf: relatorio.tex bibliography.bib
	pdflatex relatorio.tex
	bibtex relatorio
	makeindex relatorio.nlo -s nomencl.ist -o relatorio.nls
	pdflatex relatorio.tex
	pdflatex relatorio.tex

clean:
	rm relatorio.pdf relatorio.log relatorio.bbl relatorio.blg relatorio.toc relatorio.thm relatorio.nlo relatorio.lot relatorio.lof relatorio.idx *.aux
