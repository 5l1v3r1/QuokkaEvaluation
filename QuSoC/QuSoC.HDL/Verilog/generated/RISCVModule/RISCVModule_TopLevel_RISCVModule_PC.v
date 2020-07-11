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
// System configuration name is RISCVModule_TopLevel_RISCVModule_PC, clock frequency is 1Hz, Embedded
// FSM summary
// -- Packages
module RISCVModule_TopLevel_RISCVModule_PC (
// [BEGIN USER PORTS]
// [END USER PORTS]

	input  BoardSignals_Clock,
	input  BoardSignals_Reset,
	input  BoardSignals_Running,
	input  BoardSignals_Starting,
	input  BoardSignals_Started,
	input  WE,
	input  [32: 1] NextPC,
	output [32: 1] PC
    );

// [BEGIN USER SIGNALS]
// [END USER SIGNALS]
localparam HiSignal = 1'b1;
localparam LoSignal = 1'b0;
wire  Zero = 1'b0;
wire  One = 1'b1;
wire  true = 1'b1;
wire  false = 1'b0;
wire  Inputs_WE;
wire  [32:1] Inputs_NextPC;
reg  [32:1] NextState_PC = 32'b00000000000000000000000000000000;
reg  [32:1] State_PC = 32'b00000000000000000000000000000000;
wire  [32:1] State_PCDefault = 32'b00000000000000000000000000000000;
always @(posedge BoardSignals_Clock)
begin
if ( BoardSignals_Reset == 1 ) begin
State_PC <= State_PCDefault;
end
else begin
State_PC <= NextState_PC;
end
end
always @*
begin
NextState_PC = State_PC;
if ( Inputs_WE == 1 ) begin
NextState_PC = Inputs_NextPC;
end

end
assign Inputs_WE = WE;
assign Inputs_NextPC = NextPC;
assign PC = State_PC;
// [BEGIN USER ARCHITECTURE]
// [END USER ARCHITECTURE]
endmodule
