module TB_Datapath;

reg 	clk_tb = 0;
reg 	reset_tb;
/*reg 	enable_PC_tb, 
	Selector_Addr_tb, 
	enable_MemSys_tb, 
	enable_RegIns_tb,
	enable_RF_tb, 
	Selector_RF_WR_tb, 
	Selector_ALU_Src_A_tb, 
	Selector_PC_Source_tb,
	Selector_RF_WD_tb;
reg [1:0] Selector_ALU_Src_B_tb;
reg [2:0] Selector_ALU_Op_tb;*/
wire [7:0] GPIO_o_tb;

Data_Path DUT
(
//INPUTS
	.clk(clk_tb),
 	.reset(reset_tb),
 	/*.enable_PC(enable_PC_tb), 
	.Selector_Addr(Selector_Addr_tb), 
	.enable_MemSys(enable_MemSys_tb), 
	.enable_RegIns(enable_RegIns_tb),
	.enable_RF(enable_RF_tb), 
	.Selector_RF_WR(Selector_RF_WR_tb), 
	.Selector_ALU_Src_A(Selector_ALU_Src_A_tb), 
	.Selector_PC_Source(Selector_PC_Source_tb),
	.Selector_RF_WD(Selector_RF_WD_tb),
	.Selector_ALU_Src_B(Selector_ALU_Src_B_tb),
	.Selector_ALU_Op(Selector_ALU_Op_tb),*/
//OUTPUTS 
	
	.GPIO_o(GPIO_o_tb)
);

/****** CLOCK ********/
initial 
begin
	forever #2 clk_tb = !clk_tb;
end

/****** RESET *******/
initial begin
	#1 reset_tb = 1'b1;
	#3 reset_tb = 1'b0;
	#3 reset_tb = 1'b1;
end

/***** IorD MUX and PC 400000*****/
/*initial begin
	#1 enable_PC_tb = 1'b1;
	   Selector_Addr_tb = 1'b0;
	   enable_MemSys_tb = 1'b0;
	   enable_RF_tb = 1'b0;
	   enable_RegIns_tb = 1'b1;	   
	#4 enable_PC_tb = 1'b0;
end*/

/****** RF *********/
/*initial begin

	#11 enable_RegIns_tb = 1'b0;
	#7  Selector_ALU_Src_A_tb = 1'b1;
	    Selector_ALU_Src_B_tb = 2'b10;
	#5  Selector_ALU_Op_tb = 3'b001;
	#2  enable_RF_tb = 1'b1;
	    Selector_RF_WR_tb = 1'b0;
	    Selector_RF_WD_tb = 1'b0;

//WRITE BACK 1		
	#6 enable_RF_tb = 1'b0;
	#4 Selector_ALU_Src_A_tb = 1'b0;
	   Selector_ALU_Src_B_tb = 2'b01;
	   Selector_ALU_Op_tb = 3'b001;
	   Selector_PC_Source_tb = 1'b0;
	   Selector_RF_WR_tb = 1'bx;
	   Selector_RF_WD_tb = 1'bx;
end
*/
//initial begin
/******** 400_004 **********/
	/*#36 enable_PC_tb = 1'b1;
	   Selector_Addr_tb = 1'b0;
	   enable_MemSys_tb = 1'b0;
	   enable_RF_tb = 1'b0;
	   enable_RegIns_tb = 1'b1;	   
	#4 enable_PC_tb = 1'b0;
	#6 enable_RegIns_tb = 1'b0;
	#7 Selector_ALU_Src_A_tb = 1'b1;
	   Selector_ALU_Src_B_tb = 2'b10;
	#5 Selector_ALU_Op_tb = 3'b001;
	#2 enable_RF_tb = 1'b1;
	   Selector_RF_WR_tb = 1'b0;
	   Selector_RF_WD_tb = 1'b0;

//WRITE BACK 2		
	#4 enable_RF_tb = 1'b0;
	#4 Selector_ALU_Src_A_tb = 1'b0;
	   Selector_ALU_Src_B_tb = 2'b01;
	   Selector_ALU_Op_tb = 3'b001;
	   Selector_PC_Source_tb = 1'b0;
	   Selector_RF_WR_tb = 1'bx;
	   Selector_RF_WD_tb = 1'bx;
end

initial begin*/
/************ 400_008 ************/
	/*#69 enable_PC_tb = 1'b1;
	   Selector_Addr_tb = 1'b0;
	   enable_MemSys_tb = 1'b0;
	   enable_RF_tb = 1'b0;
	   enable_RegIns_tb = 1'b1;	   
	#4 enable_PC_tb = 1'b0;
	#6 enable_RegIns_tb = 1'b0;
	#7 Selector_ALU_Src_A_tb = 1'b1;
	   Selector_ALU_Src_B_tb = 2'b10;
	#5 Selector_ALU_Op_tb = 3'b001;
	#2 enable_RF_tb = 1'b1;
	   Selector_RF_WR_tb = 1'b0;
	   Selector_RF_WD_tb = 1'b0;

//WRITE BACK 3	
	#2 enable_RF_tb = 1'b0;
	#4 Selector_ALU_Src_A_tb = 1'b0;
	   Selector_ALU_Src_B_tb = 2'b01;
	   Selector_ALU_Op_tb = 3'b001;
	   Selector_PC_Source_tb = 1'b0;
	   Selector_RF_WR_tb = 1'bx;
	   Selector_RF_WD_tb = 1'bx;
end

initial begin*/
/************ 400_00C ************/
	/*#102 enable_PC_tb = 1'b1;
	   Selector_Addr_tb = 1'b0;
	   enable_MemSys_tb = 1'b0;
	   enable_RF_tb = 1'b0;
	   enable_RegIns_tb = 1'b1;	   
	#4 enable_PC_tb = 1'b0;
	#6 enable_RegIns_tb = 1'b0;
	#7 Selector_ALU_Src_A_tb = 1'b1;
	   Selector_ALU_Src_B_tb = 2'b00;
	#5 Selector_ALU_Op_tb = 3'b001;
	#2 enable_RF_tb = 1'b1;
	   Selector_RF_WR_tb = 1'b1;
	   Selector_RF_WD_tb = 1'b0;
//WRITE BACK 4	
	#2 enable_RF_tb = 1'b0;
	#2 Selector_ALU_Src_A_tb = 1'b0;
	   Selector_ALU_Src_B_tb = 2'b01;
	   Selector_ALU_Op_tb = 3'b001;
	   Selector_PC_Source_tb = 1'b0;
	   Selector_RF_WR_tb = 1'bx;
	   Selector_RF_WD_tb = 1'bx;
end

initial begin*/
/************ 400_010 ************/
	/*#132 enable_PC_tb = 1'b1;
	   Selector_Addr_tb = 1'b0;
	   enable_MemSys_tb = 1'b0;
	   enable_RF_tb = 1'b0;
	   enable_RegIns_tb = 1'b1;	   
	#4 enable_PC_tb = 1'b0;
	#6 enable_RegIns_tb = 1'b0;
	#7 Selector_ALU_Src_A_tb = 1'b1;
	   Selector_ALU_Src_B_tb = 2'b00;
	#5 Selector_ALU_Op_tb = 3'b001;
	#2 enable_RF_tb = 1'b1;
	   Selector_RF_WR_tb = 1'b1;
	   Selector_RF_WD_tb = 1'b0;
//WRITE BACK 5	
	#4 enable_RF_tb = 1'b0;
	#2 Selector_ALU_Src_A_tb = 1'b0;
	   Selector_ALU_Src_B_tb = 2'b01;
	   Selector_ALU_Op_tb = 3'b001;
	   Selector_PC_Source_tb = 1'b0;
	   Selector_RF_WR_tb = 1'bx;
	   Selector_RF_WD_tb = 1'bx;
end

initial begin*/
/******* 400_014*****/
	/*#165 enable_PC_tb = 1'b1;
	   Selector_Addr_tb = 1'b0;
	   enable_MemSys_tb = 1'b0;
	   enable_RF_tb = 1'b0;
	   enable_RegIns_tb = 1'b1;	   
	#4 enable_PC_tb = 1'b0;
	#6 enable_RegIns_tb = 1'b0;
	#7 Selector_ALU_Src_A_tb = 1'b1;
	   Selector_ALU_Src_B_tb = 2'b00;
	#5 Selector_ALU_Op_tb = 3'b001;
	#2 enable_RF_tb = 1'b1;
	   Selector_RF_WR_tb = 1'b1;
	   Selector_RF_WD_tb = 1'b0;
end*/
endmodule 