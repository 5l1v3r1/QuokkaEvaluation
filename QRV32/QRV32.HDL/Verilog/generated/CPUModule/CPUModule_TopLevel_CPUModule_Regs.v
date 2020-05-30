`default_nettype none
// PLEASE READ THIS, IT MAY SAVE YOU SOME TIME AND MONEY, THANK YOU!
// * This file was generated by Quokka FPGA Toolkit.
// * Generated code is your property, do whatever you want with it
// * Place custom code between [BEGIN USER ***] and [END USER ***].
// * CAUTION: All code outside of [USER] scope is subject to regeneration.
// * Bad things happen sometimes in developer's life,
//   it is recommended to use source control management software (e.g. git, bzr etc) to keep your custom code safe'n'sound.
// * Internal structure of code is subject to change.
//   You can use some of signals in custom code, but most likely they will not exist in future (e.g. will get shorter or gone completely)
// * Please send your feedback, comments, improvement ideas etc. to evmuryshkin@gmail.com
// * Visit https://github.com/EvgenyMuryshkin/QuokkaEvaluation to access latest version of playground
// 
// DISCLAIMER:
//   Code comes AS-IS, it is your responsibility to make sure it is working as expected
//   no responsibility will be taken for any loss or damage caused by use of Quokka toolkit.
// 
// System configuration name is CPUModule_TopLevel_CPUModule_Regs, clock frequency is 1Hz, Embedded
// FSM summary
// -- Packages
module CPUModule_TopLevel_CPUModule_Regs (
// [BEGIN USER PORTS]
// [END USER PORTS]

	input  BoardSignals_Clock,
	input  BoardSignals_Reset,
	input  BoardSignals_Running,
	input  BoardSignals_Starting,
	input  BoardSignals_Started,
	input  Read,
	input  [5: 1] RS1Addr,
	input  [5: 1] RS2Addr,
	input  [5: 1] RD,
	input  WE,
	input  [32: 1] WriteData,
	output [32: 1] RS1,
	output [32: 1] RS2,
	output Ready
    );

// [BEGIN USER SIGNALS]
// [END USER SIGNALS]
localparam HiSignal = 1'b1;
localparam LoSignal = 1'b0;
wire  Zero = 1'b0;
wire  One = 1'b1;
wire  true = 1'b1;
wire  false = 1'b0;
wire  RegistersBlockModule_L20F9L23T10_RegistersBlockModule_L21F43T44_Expr = 1'b0;
wire  Inputs_Read;
wire  [5:1] Inputs_RS1Addr;
wire  [5:1] Inputs_RS2Addr;
wire  [5:1] Inputs_RD;
wire  Inputs_WE;
wire  [32:1] Inputs_WriteData;
reg  [32:1] NextState_ReadData = 32'b00000000000000000000000000000000;
reg  [32:1] State_xDefault = 32'b00000000000000000000000000000000;
wire  [32:1] RegistersBlockModule_L15F44T67_Index;
wire  [32:1] RegistersBlockModule_L16F44T67_Index;
reg  [32:1] State_ReadData = 32'b00000000000000000000000000000000;
wire  [32:1] State_ReadDataDefault = 32'b00000000000000000000000000000000;
wire  RegistersBlockModule_L20F9L23T10_RegistersBlockModule_L21F17T44_Expr;
wire  RegistersBlockModule_L20F9L23T10_RegistersBlockModule_L21F17T44_Expr_1;
wire  RegistersBlockModule_L20F9L23T10_RegistersBlockModule_L21F17T44_Expr_2;
wire  RegistersBlockModule_L20F9L23T10_RegistersBlockModule_L21F30T44_Expr;
wire signed  [6:1] RegistersBlockModule_L20F9L23T10_RegistersBlockModule_L21F30T44_ExprLhs;
wire signed  [6:1] RegistersBlockModule_L20F9L23T10_RegistersBlockModule_L21F30T44_ExprRhs;
integer State_x_Iterator;
reg [32:1] State_x [0 : 31];
initial
begin
	for (State_x_Iterator = 0; State_x_Iterator < 32; State_x_Iterator = State_x_Iterator + 1)
		State_x[State_x_Iterator] = 0;
end
integer NextState_x_Iterator;
reg [32:1] NextState_x [0 : 31];
initial
begin
	for (NextState_x_Iterator = 0; NextState_x_Iterator < 32; NextState_x_Iterator = NextState_x_Iterator + 1)
		NextState_x[NextState_x_Iterator] = 0;
end
always @(posedge BoardSignals_Clock)
begin
if ( BoardSignals_Reset == 1 ) begin
State_ReadData <= State_ReadDataDefault;
end
else begin
State_ReadData <= NextState_ReadData;
end
end
always @(posedge BoardSignals_Clock)
begin
if ( BoardSignals_Reset == 1 ) begin
for (State_x_Iterator = 0; State_x_Iterator < 32; State_x_Iterator = State_x_Iterator + 1)
begin
State_x[State_x_Iterator] <= State_xDefault;
end
end
else begin
for (State_x_Iterator = 0; State_x_Iterator < 32; State_x_Iterator = State_x_Iterator + 1)
begin
State_x[State_x_Iterator] <= NextState_x[State_x_Iterator];
end
end
end
assign RegistersBlockModule_L20F9L23T10_RegistersBlockModule_L21F30T44_Expr = RegistersBlockModule_L20F9L23T10_RegistersBlockModule_L21F30T44_ExprLhs != RegistersBlockModule_L20F9L23T10_RegistersBlockModule_L21F30T44_ExprRhs ? 1'b1 : 1'b0;
assign RegistersBlockModule_L20F9L23T10_RegistersBlockModule_L21F17T44_Expr = RegistersBlockModule_L20F9L23T10_RegistersBlockModule_L21F17T44_Expr_1 & RegistersBlockModule_L20F9L23T10_RegistersBlockModule_L21F17T44_Expr_2;
always @*
begin
NextState_ReadData = State_ReadData/*cast*/;
for (NextState_x_Iterator = 0; NextState_x_Iterator < 32; NextState_x_Iterator = NextState_x_Iterator + 1)
begin
NextState_x[NextState_x_Iterator] = State_x[NextState_x_Iterator]/*cast*/;
end
if ( RegistersBlockModule_L20F9L23T10_RegistersBlockModule_L21F17T44_Expr == 1 ) begin
NextState_x[Inputs_RD] = Inputs_WriteData/*cast*/;
end

end
assign RegistersBlockModule_L15F44T67_Index = State_x[Inputs_RS1Addr];
assign RegistersBlockModule_L16F44T67_Index = State_x[Inputs_RS2Addr];
assign RegistersBlockModule_L20F9L23T10_RegistersBlockModule_L21F30T44_ExprLhs = { {1{1'b0}}, Inputs_RD }/*expand*/;
assign RegistersBlockModule_L20F9L23T10_RegistersBlockModule_L21F30T44_ExprRhs = { {5{1'b0}}, RegistersBlockModule_L20F9L23T10_RegistersBlockModule_L21F43T44_Expr }/*expand*/;
assign RegistersBlockModule_L20F9L23T10_RegistersBlockModule_L21F17T44_Expr_1 = Inputs_WE;
assign RegistersBlockModule_L20F9L23T10_RegistersBlockModule_L21F17T44_Expr_2 = RegistersBlockModule_L20F9L23T10_RegistersBlockModule_L21F30T44_Expr;
assign Inputs_Read = Read;
assign Inputs_RS1Addr = RS1Addr/*cast*/;
assign Inputs_RS2Addr = RS2Addr/*cast*/;
assign Inputs_RD = RD/*cast*/;
assign Inputs_WE = WE;
assign Inputs_WriteData = WriteData/*cast*/;
assign RS1 = RegistersBlockModule_L15F44T67_Index/*cast*/;
assign RS2 = RegistersBlockModule_L16F44T67_Index/*cast*/;
assign Ready = Inputs_Read;
// [BEGIN USER ARCHITECTURE]
// [END USER ARCHITECTURE]
endmodule
