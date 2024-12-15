
INTERP=wine
OUTPUT=cymek.tdb
OUTDIR=Collection
COMPILER=TransCompiler.exe
GAME=Transcendence.exe

.PHONY: all default clean run compile debug

compile: cymek.xml
	cd .. && ${INTERP} ${COMPILER} /input:howerj/cymek.xml /output:${OUTDIR}/${OUTPUT}

run: compile
	cd .. && ${INTERP} ${GAME}

debug: compile
	${INTERP} ${GAME} /debug
