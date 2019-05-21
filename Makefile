#SOURCE https://github.com/hrs/latex-presentation-template/blob/master/Makefile
#from repo: https://github.com/hrs/latex-presentation-template
#author https://github.com/hrs
project = report

project : $(project).bib $(project).tex
	pdflatex $(project)
	bibtex $(project)
	pdflatex $(project)
	pdflatex $(project)

clean:
	rm -f $(project).aux $(project).bbl $(project).blg $(project).dvi $(project).fdb_latexmk $(project).log $(project).nav $(project).out $(project).pdf $(project).snm $(project).toc missfont.log

fresh:
	make clean && make
