SRC := ${shell find . -type f -name \*.scala}

all: VexRiscv_Stream.v

VexRiscv_Stream.v: $(SRC)
	sbt compile "runMain vexriscv.GenCoreDefault --iCacheSize 256 --dCacheSize 256 --mulDiv true --singleCycleShift true --singleCycleMulDiv true --numReadStreams 5 --numWriteStreams 5 --outputFile VexRiscv_Stream"
