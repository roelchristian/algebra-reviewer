doc=algebra
AUX_EXTS = aux out ilg ind log lot lof maf mtc mtc0 xml toc ent lg dvi idv 4ct 4tc acn acr alg bbl bcf blg lpz lzo lzs ist


all:
	lualatex $(doc)

clean:
	for ext in $(AUX_EXTS); do \
		find . -name "*.$$ext" -exec rm {} \; ; \
	done ; \
	find . -maxdepth 1 -name "*.idx" -exec rm {} \; ; \
	echo "Cleaned up auxiliary files"