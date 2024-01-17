CXX_SOURCES = $(shell find src -type f -name "*.cc")
CXX_INCLUDES = inc
CXX_FLAGS = -std=c++11 -O3 $(addprefix -I ,$(CXX_INCLUDES))

rvdisasm: $(CXX_SOURCES)
	mkdir -p build
	g++ $(CXX_FLAGS) $^ -o build/$@

export:
	mkdir -p riscv-disasm
	cp src/disasm.cc riscv-disasm/
	cp inc/disasm.h riscv-disasm/
	cp inc/encoding.h riscv-disasm/