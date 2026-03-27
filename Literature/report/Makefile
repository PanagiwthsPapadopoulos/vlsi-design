# GNU make
ENGINE = lualatex
BIB = biber
JOB = Literature_Report_Team_02_Kapetanios_Papadopoulos

.PHONY: main quick clean purge

main: main.tex
	$(ENGINE) --jobname=$(JOB) main.tex
	$(BIB) $(JOB)
	$(ENGINE) --jobname=$(JOB) main.tex

quick: main.tex
	$(ENGINE) --jobname=$(JOB) main.tex

# UNIX-like
clean:
	del /F /S *.log *.out *.aux *.bbl *.bcf *.blg *.xml *.toc
#	rm -f *.log *.out *.aux *.bbl *.bcf *.blg *.xml *.toc

purge: clean
	del /FF *.pdf
#	rm -f *.pdf
