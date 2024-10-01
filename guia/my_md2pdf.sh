# define los argumentos de pandoc segun la version, pues hay diferencia entre v1 y v2
pandoc -f markdown -t latex  --include-in-header header_2025.tex \
		-V lang=es-AR -V geometry:a4paper -V fontsize=11pt -V documentclass=article \
		-V geometry:headheight=1in -V geometry:margin=1in -V geometry:top=1.5in \
		-V mainfont="DejaVu Serif" -V colorlinks=true -V graphics=true \
		-V monofont="Latin Modern Mono" \
		-V mainfontoptions="Scale=MatchLowercase" \
		-o $1.pdf \
		$1.md
