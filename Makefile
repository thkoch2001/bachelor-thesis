#!/usr/bin/make -f

LATEXBASENAME=restful_groupware
LATEXMAIN=latex/${LATEXBASENAME}.tex
HTMLDEST=html
CLEANPATTERN=".*.\(tmp\|dvi\|4ct\|idv\|lg\|log\|xref\|4tc\|aux\|bbl\|out\|toc\)"

html-single: DEST=${HTMLDEST}/single
html-single:
	rm ${DEST}/* ; rmdir ${DEST} ; mkdir -p ${DEST}
	cd ${DEST} && latex ../../${LATEXMAIN} && BIBINPUTS=../../latex bibtex ${LATEXBASENAME}
	cd ${DEST} && /usr/share/tex4ht/htlatex ../../${LATEXMAIN} "../../latex/tex4ht.cfg,html" ""
	find ${DEST} -regex ${CLEANPATTERN}  -delete

html-multi: DEST=${HTMLDEST}/multi
html-multi:
	rm ${DEST}/* ; rmdir ${DEST} ; mkdir -p ${DEST}
	cd ${DEST} && latex ../../${LATEXMAIN} && BIBINPUTS=../../latex bibtex ${LATEXBASENAME}
	cd ${DEST} && /usr/share/tex4ht/htlatex ../../${LATEXMAIN} "../../latex/tex4ht.cfg,html,2" ""
	find ${DEST} -regex ${CLEANPATTERN}  -delete

html-git-add:
	cd ${HTMLDEST} && git status && git add --all && git status

html-git-commit: html-git-add
	cd ${HTMLDEST} && git commit -m"commit from Makefile"

html-git-push: html-git-commit
	cd ${HTMLDEST} && git push