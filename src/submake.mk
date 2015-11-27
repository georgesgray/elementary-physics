PAPERS = ../../papers
COMMON = ../common

.PHONY: all edit paper read clean tidy test

all paper : ${PAPERS}/${FILENAME}.pdf

${PAPERS}/${FILENAME}.pdf : ${FILENAME}.tex body.tex *.png ${COMMON}/last-comment.tex ${COMMON}/elementary-physics.cls ${COMMON}/elementary-physics.bib
	pdflatex ${FILENAME}.tex
	bibtex ${FILENAME}.aux
	pdflatex ${FILENAME}.tex
	pdflatex ${FILENAME}.tex
	mv -f ${FILENAME}.pdf ${PAPERS}

edit :
	gedit body.tex &

read : paper
	evince ${PAPERS}/${FILENAME}.pdf &

tidy :
	rm -f ${FILENAME}.aux
	rm -f ${FILENAME}.bbl
	rm -f ${FILENAME}.blg
	rm -f ${FILENAME}.log
	rm -f ${FILENAME}.out
	rm -f ${FILENAME}.run.xml
	rm -f ${FILENAME}.toc
	rm -f ${FILENAME}-blx.bib
	rm -f *.tex~

clean : tidy
	rm -f ${PAPERS}/${FILENAME}.pdf

test :
	pdflatex ${FILENAME}.tex
	mv -f ${FILENAME}.pdf ${PAPERS}
	evince ${PAPERS}/${FILENAME}.pdf &


