%.ps : %.sch
	gschem -p -o $*.ps -s $*.sch
dds-ad9910.ps : dds-ad9910.ps
	./psmerge $^ > $@

%.pdf : %.ps
	ps2pdf $< $@

