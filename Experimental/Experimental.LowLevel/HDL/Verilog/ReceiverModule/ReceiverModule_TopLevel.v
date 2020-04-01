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
// System configuration name is ReceiverModule_TopLevel, clock frequency is 1Hz, Top-level
// FSM summary
// -- Packages
module ReceiverModule_TopLevel (
// [BEGIN USER PORTS]
// [END USER PORTS]

	input  Clock,
	input  Reset,
	input  ReceiverModuleIsValid,
	input  ReceiverModuleAck,
	input  ReceiverModuleBit,
	output ReceiverModuleHasData,
	output [7: 0] ReceiverModuleData,
	output [7: 0] ReceiverModulePartialData
    );

// [BEGIN USER SIGNALS]
// [END USER SIGNALS]
localparam HiSignal = 1'b1;
localparam LoSignal = 1'b0;
wire  ReceiverModule_TopLevel_Clock;
wire  ReceiverModule_TopLevel_Reset;
wire  ReceiverModule_TopLevel_ReceiverModuleIsValid;
wire  ReceiverModule_TopLevel_ReceiverModuleAck;
wire  ReceiverModule_TopLevel_ReceiverModuleBit;
wire  ReceiverModule_TopLevel_ReceiverModuleHasData;
wire  [8:1] ReceiverModule_TopLevel_ReceiverModuleData;
wire  [8:1] ReceiverModule_TopLevel_ReceiverModulePartialData;
wire  ReceiverModule_TopLevel_ReceiverModule_Clock;
wire  ReceiverModule_TopLevel_ReceiverModule_Reset;
wire  ReceiverModule_TopLevel_ReceiverModule_IsValid;
wire  ReceiverModule_TopLevel_ReceiverModule_Ack;
wire  ReceiverModule_TopLevel_ReceiverModule_Bit;
wire  ReceiverModule_TopLevel_ReceiverModule_HasData;
wire  [8:1] ReceiverModule_TopLevel_ReceiverModule_Data;
wire  [8:1] ReceiverModule_TopLevel_ReceiverModule_PartialData;
wire  ReceiverModule_TopLevel_ReceiverModule_Zero = 1'b0;
wire  ReceiverModule_TopLevel_ReceiverModule_One = 1'b1;
wire  ReceiverModule_TopLevel_ReceiverModule_true = 1'b1;
wire  ReceiverModule_TopLevel_ReceiverModule_false = 1'b0;
wire  ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F22T38_Expr = 1'b0;
wire  ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L18F21L21T22_ReceiverModule_L20F41T62_Expr = 1'b1;
wire  ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F22T43_Expr = 1'b1;
wire  ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F64T65_Expr = 1'b1;
wire  [2:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L29F21L31T22_ReceiverModule_L30F41T66_Expr = 2'b10;
wire  [2:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F22T47_Expr = 2'b10;
wire  ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L35F21L38T22_ReceiverModule_L36F41T57_Expr = 1'b0;
wire  ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L35F21L38T22_ReceiverModule_L37F42T43_Expr = 1'b0;
wire  [2:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F46T71_Expr = 2'b10;
wire  [8:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F56T60_Expr = 8'b10000000;
wire  ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F63T64_Expr = 1'b0;
wire  ReceiverModule_TopLevel_ReceiverModule_Inputs_IsValid;
wire  ReceiverModule_TopLevel_ReceiverModule_Inputs_Ack;
wire  ReceiverModule_TopLevel_ReceiverModule_Inputs_Bit;
reg signed  [32:1] ReceiverModule_TopLevel_ReceiverModule_NextState_FSM = 32'b00000000000000000000000000000000;
reg  [8:1] ReceiverModule_TopLevel_ReceiverModule_NextState_Data = 8'b00000000;
wire  [8:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F42T81_Expr;
wire  [8:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F36T65_Expr;
wire signed  [32:1] ReceiverModule_TopLevel_ReceiverModule_State_FSM;
wire signed  [32:1] ReceiverModule_TopLevel_ReceiverModule_State_FSMDefault = 32'b00000000000000000000000000000000;
wire  ReceiverModule_TopLevel_ReceiverModule_State_FSMWriteEnable;
wire  [8:1] ReceiverModule_TopLevel_ReceiverModule_State_Data;
wire  [8:1] ReceiverModule_TopLevel_ReceiverModule_State_DataDefault = 8'b00000000;
wire  ReceiverModule_TopLevel_ReceiverModule_State_DataWriteEnable;
wire  [8:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr;
wire  [8:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr_1;
wire  [8:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr_2;
wire  [8:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr;
wire  [8:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr_1;
wire  ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_Case;
wire signed  [33:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseLhs;
wire signed  [33:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseRhs;
wire  ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_Case;
wire signed  [33:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseLhs;
wire signed  [33:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseRhs;
wire  ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_Case;
wire signed  [33:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseLhs;
wire signed  [33:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseRhs;
wire  ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_Expr;
wire signed  [33:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_ExprLhs;
wire signed  [33:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_ExprRhs;
reg  [8:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup = 8'b00000000;
wire  ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_LookupMultiplexerAddress;
wire  [8:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup1;
wire  [8:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup2;
wire  BoardSignals_Clock;
wire  BoardSignals_Reset;
wire  BoardSignals_Running;
wire  BoardSignals_Starting;
wire  BoardSignals_Started;
reg  InternalReset = 1'b0;
reg signed  [32:1] ReceiverModule_TopLevel_ReceiverModule_State_FSMQ = 32'b00000000000000000000000000000000;
wire signed  [32:1] ReceiverModule_TopLevel_ReceiverModule_State_FSMD;
reg  [8:1] ReceiverModule_TopLevel_ReceiverModule_State_DataQ = 8'b00000000;
wire  [8:1] ReceiverModule_TopLevel_ReceiverModule_State_DataD;
work_Quokka_BoardSignalsProc ReceiverModule_TopLevel_ReceiverModule_BoardSignalsConnection(BoardSignals_Clock,BoardSignals_Reset,BoardSignals_Running,BoardSignals_Starting,BoardSignals_Started,ReceiverModule_TopLevel_ReceiverModule_Clock,ReceiverModule_TopLevel_ReceiverModule_Reset,InternalReset);
always @(posedge BoardSignals_Clock)
begin
if ( BoardSignals_Reset == 1 ) begin
ReceiverModule_TopLevel_ReceiverModule_State_FSMQ <= ReceiverModule_TopLevel_ReceiverModule_State_FSMDefault;
end
else if ( ReceiverModule_TopLevel_ReceiverModule_State_FSMWriteEnable == 1 ) begin
ReceiverModule_TopLevel_ReceiverModule_State_FSMQ <= ReceiverModule_TopLevel_ReceiverModule_State_FSMD;
end
else begin
ReceiverModule_TopLevel_ReceiverModule_State_FSMQ <= ReceiverModule_TopLevel_ReceiverModule_State_FSMQ;
end
end
always @(posedge BoardSignals_Clock)
begin
if ( BoardSignals_Reset == 1 ) begin
ReceiverModule_TopLevel_ReceiverModule_State_DataQ <= ReceiverModule_TopLevel_ReceiverModule_State_DataDefault;
end
else if ( ReceiverModule_TopLevel_ReceiverModule_State_DataWriteEnable == 1 ) begin
ReceiverModule_TopLevel_ReceiverModule_State_DataQ <= ReceiverModule_TopLevel_ReceiverModule_State_DataD;
end
else begin
ReceiverModule_TopLevel_ReceiverModule_State_DataQ <= ReceiverModule_TopLevel_ReceiverModule_State_DataQ;
end
end
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_Case = ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseLhs == ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseRhs ? 1'b1 : 1'b0;
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_Case = ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseLhs == ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseRhs ? 1'b1 : 1'b0;
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_Case = ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseLhs == ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseRhs ? 1'b1 : 1'b0;
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_Expr = ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_ExprLhs == ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_ExprRhs ? 1'b1 : 1'b0;
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr = ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr_1 | ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr_2;
// Output: ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr, Width: 8, ShiftBy: 1, Sources: 1
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr[1] = ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr_1[2];
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr[2] = ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr_1[3];
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr[3] = ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr_1[4];
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr[4] = ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr_1[5];
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr[5] = ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr_1[6];
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr[6] = ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr_1[7];
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr[7] = ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr_1[8];
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr[8] = 0;
always @*
begin
case (ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_LookupMultiplexerAddress)
    'b0:
ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup = ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup1;
    'b1:
ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup = ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup2;
  default:
ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup = 'b00000000;
endcase

end
always @*
begin
ReceiverModule_TopLevel_ReceiverModule_NextState_FSM = ReceiverModule_TopLevel_ReceiverModule_State_FSM/*cast*/;
ReceiverModule_TopLevel_ReceiverModule_NextState_Data = ReceiverModule_TopLevel_ReceiverModule_State_Data/*cast*/;
if ( ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_Case == 1 ) begin
if ( ReceiverModule_TopLevel_ReceiverModule_Inputs_IsValid == 1 ) begin
ReceiverModule_TopLevel_ReceiverModule_NextState_Data = ReceiverModule_TopLevel_ReceiverModule_PartialData/*cast*/;
ReceiverModule_TopLevel_ReceiverModule_NextState_FSM = { {31{1'b0}}, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L18F21L21T22_ReceiverModule_L20F41T62_Expr }/*expand*/;
end
end
else if ( ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_Case == 1 ) begin
if ( ReceiverModule_TopLevel_ReceiverModule_Inputs_IsValid == 1 ) begin
ReceiverModule_TopLevel_ReceiverModule_NextState_Data = ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F42T81_Expr/*cast*/;
end
else begin
ReceiverModule_TopLevel_ReceiverModule_NextState_FSM = { {30{1'b0}}, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L29F21L31T22_ReceiverModule_L30F41T66_Expr }/*expand*/;
end
end
else begin
if ( ReceiverModule_TopLevel_ReceiverModule_Inputs_Ack == 1 ) begin
ReceiverModule_TopLevel_ReceiverModule_NextState_FSM = { {31{1'b0}}, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L35F21L38T22_ReceiverModule_L36F41T57_Expr }/*expand*/;
ReceiverModule_TopLevel_ReceiverModule_NextState_Data = { {7{1'b0}}, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L35F21L38T22_ReceiverModule_L37F42T43_Expr }/*expand*/;
end
end

end
	assign ReceiverModule_TopLevel_ReceiverModuleIsValid = ReceiverModuleIsValid;
	assign ReceiverModule_TopLevel_ReceiverModuleAck = ReceiverModuleAck;
	assign ReceiverModule_TopLevel_ReceiverModuleBit = ReceiverModuleBit;
// Top-level entity connections
assign ReceiverModule_TopLevel_Clock = Clock;
assign ReceiverModule_TopLevel_Reset = !Reset;
assign ReceiverModuleHasData = ReceiverModule_TopLevel_ReceiverModuleHasData;
assign ReceiverModuleData[7: 0] = ReceiverModule_TopLevel_ReceiverModuleData[8: 1];
assign ReceiverModulePartialData[7: 0] = ReceiverModule_TopLevel_ReceiverModulePartialData[8: 1];
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_LookupMultiplexerAddress = ReceiverModule_TopLevel_ReceiverModule_Inputs_Bit;
assign ReceiverModule_TopLevel_ReceiverModule_State_FSM = ReceiverModule_TopLevel_ReceiverModule_State_FSMQ;
assign ReceiverModule_TopLevel_ReceiverModule_State_FSMD = ReceiverModule_TopLevel_ReceiverModule_NextState_FSM;
assign ReceiverModule_TopLevel_ReceiverModule_State_FSMWriteEnable = HiSignal;
assign ReceiverModule_TopLevel_ReceiverModule_State_Data = ReceiverModule_TopLevel_ReceiverModule_State_DataQ;
assign ReceiverModule_TopLevel_ReceiverModule_State_DataD = ReceiverModule_TopLevel_ReceiverModule_NextState_Data;
assign ReceiverModule_TopLevel_ReceiverModule_State_DataWriteEnable = HiSignal;
assign ReceiverModule_TopLevel_ReceiverModule_Clock = ReceiverModule_TopLevel_Clock;
assign ReceiverModule_TopLevel_ReceiverModule_Reset = ReceiverModule_TopLevel_Reset;
assign ReceiverModule_TopLevel_ReceiverModule_IsValid = ReceiverModule_TopLevel_ReceiverModuleIsValid;
assign ReceiverModule_TopLevel_ReceiverModule_Ack = ReceiverModule_TopLevel_ReceiverModuleAck;
assign ReceiverModule_TopLevel_ReceiverModule_Bit = ReceiverModule_TopLevel_ReceiverModuleBit;
assign ReceiverModule_TopLevel_ReceiverModuleHasData = ReceiverModule_TopLevel_ReceiverModule_HasData;
assign ReceiverModule_TopLevel_ReceiverModuleData = ReceiverModule_TopLevel_ReceiverModule_Data;
assign ReceiverModule_TopLevel_ReceiverModulePartialData = ReceiverModule_TopLevel_ReceiverModule_PartialData;
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseLhs = { {1{ReceiverModule_TopLevel_ReceiverModule_State_FSM[32]}}, ReceiverModule_TopLevel_ReceiverModule_State_FSM }/*expand*/;
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseRhs = { {32{1'b0}}, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F22T38_Expr }/*expand*/;
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseLhs = { {1{ReceiverModule_TopLevel_ReceiverModule_State_FSM[32]}}, ReceiverModule_TopLevel_ReceiverModule_State_FSM }/*expand*/;
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseRhs = { {32{1'b0}}, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F22T43_Expr }/*expand*/;
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseLhs = { {1{ReceiverModule_TopLevel_ReceiverModule_State_FSM[32]}}, ReceiverModule_TopLevel_ReceiverModule_State_FSM }/*expand*/;
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseRhs = { {31{1'b0}}, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F22T47_Expr }/*expand*/;
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_ExprLhs = { {1{ReceiverModule_TopLevel_ReceiverModule_State_FSM[32]}}, ReceiverModule_TopLevel_ReceiverModule_State_FSM }/*expand*/;
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_ExprRhs = { {31{1'b0}}, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F46T71_Expr }/*expand*/;
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr_1 = ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr/*cast*/;
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr_2 = ReceiverModule_TopLevel_ReceiverModule_PartialData/*cast*/;
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr_1 = ReceiverModule_TopLevel_ReceiverModule_State_Data/*cast*/;
assign ReceiverModule_TopLevel_ReceiverModule_Inputs_IsValid = ReceiverModule_TopLevel_ReceiverModule_IsValid;
assign ReceiverModule_TopLevel_ReceiverModule_Inputs_Ack = ReceiverModule_TopLevel_ReceiverModule_Ack;
assign ReceiverModule_TopLevel_ReceiverModule_Inputs_Bit = ReceiverModule_TopLevel_ReceiverModule_Bit;
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F42T81_Expr = ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr/*cast*/;
assign ReceiverModule_TopLevel_ReceiverModule_HasData = ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_Expr;
assign ReceiverModule_TopLevel_ReceiverModule_Data = ReceiverModule_TopLevel_ReceiverModule_State_Data/*cast*/;
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F36T65_Expr = ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup/*cast*/;
assign ReceiverModule_TopLevel_ReceiverModule_PartialData = ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F36T65_Expr/*cast*/;
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup1 = { {7{1'b0}}, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F63T64_Expr }/*expand*/;
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup2 = ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F56T60_Expr/*cast*/;
// [BEGIN USER ARCHITECTURE]
// [END USER ARCHITECTURE]
endmodule
