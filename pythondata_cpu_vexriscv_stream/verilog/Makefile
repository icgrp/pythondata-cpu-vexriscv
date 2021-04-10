SRC := ${shell find . -type f -name \*.scala}

all: VexRiscv_Stream.v

VexRiscv_Stream.v: $(SRC)
	sbt "runMain vexriscv.VexRiscvStream"
