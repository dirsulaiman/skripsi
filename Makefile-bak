# make run file=proposal
# make clear file=proposal

DOCNAME=$(file)

run: 
	pdflatex $(DOCNAME).tex ;
	biber $(DOCNAME) ;
	pdflatex $(DOCNAME).tex ;
	pdflatex $(DOCNAME).tex

clear:
ifeq (,$(wildcard ./$(DOCNAME).aux))
	rm $(DOCNAME).aux;
$(info "Deleted aux")
endif
ifeq (,$(wildcard ./$(DOCNAME).bbl))
	rm $(DOCNAME).bbl;
$(info "Deleted bbl")
endif
ifeq (,$(wildcard ./$(DOCNAME).out))
	rm $(DOCNAME).out;
$(info "Deleted out")
endif
ifeq (,$(wildcard ./$(DOCNAME).blg))
	rm $(DOCNAME).blg;
$(info "Deleted blg")
endif
ifeq (,$(wildcard ./$(DOCNAME).log))
	rm $(DOCNAME).log;
$(info "Deleted log")
endif
ifeq (,$(wildcard ./$(DOCNAME).run.xml))
	rm $(DOCNAME).run.xml;
$(info "Deleted run.xml")
endif
$(info "Finished")
