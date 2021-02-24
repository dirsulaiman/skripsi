# make run file=proposal
# make clear file=proposal

DOCNAME=$(file)

run: 
	pdflatex $(DOCNAME).tex ;
	biber $(DOCNAME) ;
	pdflatex $(DOCNAME).tex ;
	pdflatex $(DOCNAME).tex

