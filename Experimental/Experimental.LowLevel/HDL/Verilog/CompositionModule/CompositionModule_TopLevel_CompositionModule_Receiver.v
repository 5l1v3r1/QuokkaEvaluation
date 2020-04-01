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
// System configuration name is CompositionModule_TopLevel_CompositionModule_Receiver, clock frequency is 1Hz, Embedded
// FSM summary
// -- Packages
module CompositionModule_TopLevel_CompositionModule_Receiver (
// [BEGIN USER PORTS]
// [END USER PORTS]

	input  BoardSignals_Clock,
	input  BoardSignals_Reset,
	input  BoardSignals_Running,
	input  BoardSignals_Starting,
	input  BoardSignals_Started,
	input  ReceiverModuleIsValid,
	input  ReceiverModuleAck,
	input  ReceiverModuleBit,
	output ReceiverModuleHasData,
	output [8: 1] ReceiverModuleData,
	output [8: 1] ReceiverModulePartialData
    );

// [BEGIN USER SIGNALS]
// [END USER SIGNALS]
localparam HiSignal = 1'b1;
localparam LoSignal = 1'b0;
wire  CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModuleIsValid;
wire  CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModuleAck;
wire  CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModuleBit;
wire  CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModuleHasData;
wire  [8:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModuleData;
wire  [8:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModulePartialData;
wire  CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_IsValid;
wire  CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_Ack;
wire  CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_Bit;
wire  CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_HasData;
wire  [8:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_Data;
wire  [8:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_PartialData;
wire  CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_Zero = 1'b0;
wire  CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_One = 1'b1;
wire  CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_true = 1'b1;
wire  CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_false = 1'b0;
wire  CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F22T38_Expr = 1'b0;
wire  CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L18F21L21T22_ReceiverModule_L20F41T62_Expr = 1'b1;
wire  CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F22T43_Expr = 1'b1;
wire  CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F64T65_Expr = 1'b1;
wire  [2:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L29F21L31T22_ReceiverModule_L30F41T66_Expr = 2'b10;
wire  [2:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F22T47_Expr = 2'b10;
wire  CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L35F21L38T22_ReceiverModule_L36F41T57_Expr = 1'b0;
wire  CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L35F21L38T22_ReceiverModule_L37F42T43_Expr = 1'b0;
wire  [2:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L8F46T71_Expr = 2'b10;
wire  [8:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L10F56T60_Expr = 8'b10000000;
wire  CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L10F63T64_Expr = 1'b0;
wire  CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_Inputs_IsValid;
wire  CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_Inputs_Ack;
wire  CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_Inputs_Bit;
reg signed  [32:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_NextState_FSM = 32'b00000000000000000000000000000000;
reg  [8:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_NextState_Data = 8'b00000000;
wire  [8:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F42T81_Expr;
wire  [8:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L10F36T65_Expr;
wire signed  [32:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_FSM;
wire signed  [32:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_FSMDefault = 32'b00000000000000000000000000000000;
wire  CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_FSMWriteEnable;
wire  [8:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_Data;
wire  [8:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_DataDefault = 8'b00000000;
wire  CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_DataWriteEnable;
wire  [8:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr;
wire  [8:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr_1;
wire  [8:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr_2;
wire  [8:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr;
wire  [8:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr_1;
wire  CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_Case;
wire signed  [33:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseLhs;
wire signed  [33:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseRhs;
wire  CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_Case;
wire signed  [33:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseLhs;
wire signed  [33:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseRhs;
wire  CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_Case;
wire signed  [33:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseLhs;
wire signed  [33:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseRhs;
wire  CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L8F32T71_Expr;
wire signed  [33:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L8F32T71_ExprLhs;
wire signed  [33:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L8F32T71_ExprRhs;
reg  [8:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L10F43T64_Lookup = 8'b00000000;
wire  CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L10F43T64_LookupMultiplexerAddress;
wire  [8:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L10F43T64_Lookup1;
wire  [8:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L10F43T64_Lookup2;
reg signed  [32:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_FSMQ = 32'b00000000000000000000000000000000;
wire signed  [32:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_FSMD;
reg  [8:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_DataQ = 8'b00000000;
wire  [8:1] CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_DataD;
always @(posedge BoardSignals_Clock)
begin
if ( BoardSignals_Reset == 1 ) begin
CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_FSMQ <= CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_FSMDefault;
end
else if ( CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_FSMWriteEnable == 1 ) begin
CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_FSMQ <= CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_FSMD;
end
else begin
CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_FSMQ <= CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_FSMQ;
end
end
always @(posedge BoardSignals_Clock)
begin
if ( BoardSignals_Reset == 1 ) begin
CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_DataQ <= CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_DataDefault;
end
else if ( CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_DataWriteEnable == 1 ) begin
CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_DataQ <= CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_DataD;
end
else begin
CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_DataQ <= CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_DataQ;
end
end
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_Case = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseLhs == CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseRhs ? 1'b1 : 1'b0;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_Case = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseLhs == CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseRhs ? 1'b1 : 1'b0;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_Case = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseLhs == CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseRhs ? 1'b1 : 1'b0;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L8F32T71_Expr = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L8F32T71_ExprLhs == CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L8F32T71_ExprRhs ? 1'b1 : 1'b0;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr_1 | CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr_2;
// Output: CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr, Width: 8, ShiftBy: 1, Sources: 1
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr[1] = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr_1[2];
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr[2] = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr_1[3];
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr[3] = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr_1[4];
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr[4] = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr_1[5];
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr[5] = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr_1[6];
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr[6] = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr_1[7];
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr[7] = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr_1[8];
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr[8] = 0;
always @*
begin
case (CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L10F43T64_LookupMultiplexerAddress)
    'b0:
CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L10F43T64_Lookup = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L10F43T64_Lookup1;
    'b1:
CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L10F43T64_Lookup = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L10F43T64_Lookup2;
  default:
CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L10F43T64_Lookup = 'b00000000;
endcase

end
always @*
begin
CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_NextState_FSM = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_FSM/*cast*/;
CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_NextState_Data = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_Data/*cast*/;
if ( CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_Case == 1 ) begin
if ( CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_Inputs_IsValid == 1 ) begin
CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_NextState_Data = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_PartialData/*cast*/;
CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_NextState_FSM = { {31{1'b0}}, CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L18F21L21T22_ReceiverModule_L20F41T62_Expr }/*expand*/;
end
end
else if ( CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_Case == 1 ) begin
if ( CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_Inputs_IsValid == 1 ) begin
CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_NextState_Data = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F42T81_Expr/*cast*/;
end
else begin
CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_NextState_FSM = { {30{1'b0}}, CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L29F21L31T22_ReceiverModule_L30F41T66_Expr }/*expand*/;
end
end
else begin
if ( CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_Inputs_Ack == 1 ) begin
CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_NextState_FSM = { {31{1'b0}}, CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L35F21L38T22_ReceiverModule_L36F41T57_Expr }/*expand*/;
CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_NextState_Data = { {7{1'b0}}, CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L35F21L38T22_ReceiverModule_L37F42T43_Expr }/*expand*/;
end
end

end
	assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModuleIsValid = ReceiverModuleIsValid;
	assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModuleAck = ReceiverModuleAck;
	assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModuleBit = ReceiverModuleBit;
assign ReceiverModuleHasData = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModuleHasData;
assign ReceiverModuleData = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModuleData;
assign ReceiverModulePartialData = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModulePartialData;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L10F43T64_LookupMultiplexerAddress = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_Inputs_Bit;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_FSM = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_FSMQ;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_FSMD = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_NextState_FSM;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_FSMWriteEnable = HiSignal;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_Data = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_DataQ;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_DataD = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_NextState_Data;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_DataWriteEnable = HiSignal;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_IsValid = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModuleIsValid;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_Ack = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModuleAck;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_Bit = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModuleBit;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModuleHasData = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_HasData;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModuleData = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_Data;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModulePartialData = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_PartialData;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseLhs = { {1{CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_FSM[32]}}, CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_FSM }/*expand*/;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F17L22T27_CaseRhs = { {32{1'b0}}, CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L16F22T38_Expr }/*expand*/;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseLhs = { {1{CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_FSM[32]}}, CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_FSM }/*expand*/;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F17L32T27_CaseRhs = { {32{1'b0}}, CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L23F22T43_Expr }/*expand*/;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseLhs = { {1{CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_FSM[32]}}, CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_FSM }/*expand*/;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F17L39T27_CaseRhs = { {31{1'b0}}, CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L33F22T47_Expr }/*expand*/;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L8F32T71_ExprLhs = { {1{CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_FSM[32]}}, CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_FSM }/*expand*/;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L8F32T71_ExprRhs = { {31{1'b0}}, CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L8F46T71_Expr }/*expand*/;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr_1 = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr/*cast*/;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr_2 = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_PartialData/*cast*/;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F50T65_Expr_1 = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_Data/*cast*/;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_Inputs_IsValid = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_IsValid;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_Inputs_Ack = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_Ack;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_Inputs_Bit = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_Bit;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F42T81_Expr = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L12F9L41T10_ReceiverModule_L13F9L41T10_ReceiverModule_L25F21L27T22_ReceiverModule_L26F49T80_Expr/*cast*/;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_HasData = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L8F32T71_Expr;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_Data = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_State_Data/*cast*/;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L10F36T65_Expr = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L10F43T64_Lookup/*cast*/;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_PartialData = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L10F36T65_Expr/*cast*/;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L10F43T64_Lookup1 = { {7{1'b0}}, CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L10F63T64_Expr }/*expand*/;
assign CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L10F43T64_Lookup2 = CompositionModule_TopLevel_CompositionModule_Receiver_ReceiverModule_ReceiverModule_L10F56T60_Expr/*cast*/;
// [BEGIN USER ARCHITECTURE]
// [END USER ARCHITECTURE]
endmodule
