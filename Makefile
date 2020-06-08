DOCNAME=proposal

run: 
	pdflatex $(DOCNAME).tex ;
	biber $(DOCNAME) ;
	pdflatex $(DOCNAME).tex ;
	pdflatex $(DOCNAME).tex

clear: # $(DOCNAME).aux, $(DOCNAME).bbl, $(DOCNAME).out, $(DOCNAME).blg
	rm $(DOCNAME).aux;
	rm $(DOCNAME).bbl;
	rm $(DOCNAME).out;
	rm $(DOCNAME).blg;
	rm $(DOCNAME).log;
	rm $(DOCNAME).run.xml;
	echo "Cleared"
