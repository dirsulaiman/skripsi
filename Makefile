# make run file=proposal
# make clear file=proposal

DOCNAME=$(file)

run: 
	pdflatex $(DOCNAME).tex;
	biber $(DOCNAME);
	pdflatex $(DOCNAME).tex;
	pdflatex $(DOCNAME).tex

# for Linux
clear:
	rm $(DOCNAME).aux;
	rm $(DOCNAME).bbl;
	rm $(DOCNAME).bcf;
	rm $(DOCNAME).blg;
	rm $(DOCNAME).lof;
	rm $(DOCNAME).log;
	rm $(DOCNAME).lot;
	rm $(DOCNAME).out;
	rm $(DOCNAME).run.xml;
	rm $(DOCNAME).toc;
	rm $(DOCNAME).apc;

# for Windows
# clear:
# 	del $(DOCNAME).aux
# 	del $(DOCNAME).bbl
# 	del $(DOCNAME).bcf
# 	del $(DOCNAME).blg
# 	del $(DOCNAME).lof
# 	del $(DOCNAME).log
# 	del $(DOCNAME).lot
# 	del $(DOCNAME).out
# 	del $(DOCNAME).run.xml
# 	del $(DOCNAME).toc
# 	del $(DOCNAME).apc
