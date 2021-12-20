module Program_Memory
#
(
	parameter MEMORY_DEPTH = 64,
	parameter DATA_WIDTH = 32
)
(
	input [(DATA_WIDTH-1):0] Address_i,
	output reg [(DATA_WIDTH-1):0] Instruction_o
);

	// Declare the ROM variable
	reg [DATA_WIDTH-1:0] rom [MEMORY_DEPTH-1:0];
	reg [(DATA_WIDTH-1):0] Var_i = 32'h400000;
	

	initial
	begin
		$readmemh("D:/OneDrive/Documentos/- ITESO/Arquitectura de Computadoras/GIT_PROJECTS/Equipo_6/assembly_code/Factorial_HEX2.dat", rom);
	end

	always @ (Address_i, Var_i)
	begin
		Instruction_o = rom[(Address_i - Var_i) >> 2];
	end
endmodule 