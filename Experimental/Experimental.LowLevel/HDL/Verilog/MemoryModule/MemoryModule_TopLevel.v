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
// System configuration name is MemoryModule_TopLevel, clock frequency is 1Hz, Top-level
// FSM summary
// -- Packages
module MemoryModule_TopLevel (
// [BEGIN USER PORTS]
// [END USER PORTS]

	input  Clock,
	input  Reset,
	input  [7: 0] MemoryModuleReadAddress,
	input  [7: 0] MemoryModuleWriteAddress,
	input  [15: 0] MemoryModuleWriteData
    );

// [BEGIN USER SIGNALS]
// [END USER SIGNALS]
localparam HiSignal = 1'b1;
localparam LoSignal = 1'b0;
wire  MemoryModule_TopLevel_Clock;
wire  MemoryModule_TopLevel_Reset;
wire  [8:1] MemoryModule_TopLevel_MemoryModuleReadAddress;
wire  [8:1] MemoryModule_TopLevel_MemoryModuleWriteAddress;
wire  [16:1] MemoryModule_TopLevel_MemoryModuleWriteData;
wire  MemoryModule_TopLevel_MemoryModule_Clock;
wire  MemoryModule_TopLevel_MemoryModule_Reset;
wire  [8:1] MemoryModule_TopLevel_MemoryModule_ReadAddress;
wire  [8:1] MemoryModule_TopLevel_MemoryModule_WriteAddress;
wire  [16:1] MemoryModule_TopLevel_MemoryModule_WriteData;
wire  MemoryModule_TopLevel_MemoryModule_Zero = 1'b0;
wire  MemoryModule_TopLevel_MemoryModule_One = 1'b1;
wire  MemoryModule_TopLevel_MemoryModule_true = 1'b1;
wire  MemoryModule_TopLevel_MemoryModule_false = 1'b0;
wire  [8:1] MemoryModule_TopLevel_MemoryModule_Inputs_ReadAddress;
wire  [8:1] MemoryModule_TopLevel_MemoryModule_Inputs_WriteAddress;
wire  [16:1] MemoryModule_TopLevel_MemoryModule_Inputs_WriteData;
wire  BoardSignals_Clock;
wire  BoardSignals_Reset;
wire  BoardSignals_Running;
wire  BoardSignals_Starting;
wire  BoardSignals_Started;
reg  InternalReset = 1'b0;
work_Quokka_BoardSignalsProc MemoryModule_TopLevel_MemoryModule_BoardSignalsConnection(BoardSignals_Clock,BoardSignals_Reset,BoardSignals_Running,BoardSignals_Starting,BoardSignals_Started,MemoryModule_TopLevel_MemoryModule_Clock,MemoryModule_TopLevel_MemoryModule_Reset,InternalReset);
always @*
begin

end
	assign MemoryModule_TopLevel_MemoryModuleReadAddress[8: 1] = MemoryModuleReadAddress[7: 0];
	assign MemoryModule_TopLevel_MemoryModuleWriteAddress[8: 1] = MemoryModuleWriteAddress[7: 0];
	assign MemoryModule_TopLevel_MemoryModuleWriteData[16: 1] = MemoryModuleWriteData[15: 0];
// Top-level entity connections
assign MemoryModule_TopLevel_Clock = Clock;
assign MemoryModule_TopLevel_Reset = !Reset;
assign MemoryModule_TopLevel_MemoryModule_Clock = MemoryModule_TopLevel_Clock;
assign MemoryModule_TopLevel_MemoryModule_Reset = MemoryModule_TopLevel_Reset;
assign MemoryModule_TopLevel_MemoryModule_ReadAddress = MemoryModule_TopLevel_MemoryModuleReadAddress;
assign MemoryModule_TopLevel_MemoryModule_WriteAddress = MemoryModule_TopLevel_MemoryModuleWriteAddress;
assign MemoryModule_TopLevel_MemoryModule_WriteData = MemoryModule_TopLevel_MemoryModuleWriteData;
assign MemoryModule_TopLevel_MemoryModule_Inputs_ReadAddress = MemoryModule_TopLevel_MemoryModule_ReadAddress/*cast*/;
assign MemoryModule_TopLevel_MemoryModule_Inputs_WriteAddress = MemoryModule_TopLevel_MemoryModule_WriteAddress/*cast*/;
assign MemoryModule_TopLevel_MemoryModule_Inputs_WriteData = MemoryModule_TopLevel_MemoryModule_WriteData/*cast*/;
// [BEGIN USER ARCHITECTURE]
// [END USER ARCHITECTURE]
endmodule