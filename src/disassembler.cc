#include <iostream>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#include "disasm.h"

int main()
{

	insn_bits_t instruction;
	
    disassembler_t disassembler(64);
    
    while(scanf("%lx",&instruction))
    {

    	insn_t insn(instruction);

    	std::string str = disassembler.disassemble(insn);

        fprintf(stdout, "%s\n",str.c_str());   // TODO : Formatting
    }
    // delete(disassembler);
    return 0;
}