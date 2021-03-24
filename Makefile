# make run file=proposal
# make clear file=proposal

DOCNAME=$(file)

run: 
	pdflatex $(DOCNAME).tex;
	biber $(DOCNAME);
	pdflatex $(DOCNAME).tex;
	pdflatex $(DOCNAME).tex

clear:
	rm $(DOCNAME).aux;
	rm $(DOCNAME).bbl;
	rm $(DOCNAME).out;
	rm $(DOCNAME).blg;
	rm $(DOCNAME).log;
	rm $(DOCNAME).run.xml;
	echo "Cleared"

# rm $(DOCNAME).toc
# rm $(DOCNAME).bcf
# rm $(DOCNAME).lof