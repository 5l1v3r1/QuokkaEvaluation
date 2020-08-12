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
// System configuration name is Recursion_TopLevel_QuSoCModule_CPU_RISCVModule_CMP, clock frequency is 1Hz, Embedded
// FSM summary
// -- Packages
module Recursion_TopLevel_QuSoCModule_CPU_RISCVModule_CMP (
// [BEGIN USER PORTS]
// [END USER PORTS]

	input  [32: 1] Lhs,
	input  [32: 1] Rhs,
	output EQ,
	output NE,
	output GTU,
	output LTU,
	output GTS,
	output LTS
    );

// [BEGIN USER SIGNALS]
// [END USER SIGNALS]
localparam HiSignal = 1'b1;
localparam LoSignal = 1'b0;
wire  Zero = 1'b0;
wire  One = 1'b1;
wire  true = 1'b1;
wire  false = 1'b0;
wire  [32:1] Inputs_Lhs;
wire  [32:1] Inputs_Rhs;
wire  internalEQ;
wire  [32:1] CompareModule_L16F28T49_SignChange;
wire  [32:1] CompareModule_L16F52T73_SignChange;
wire  [32:1] CompareModule_L17F28T49_SignChange;
wire  [32:1] CompareModule_L17F52T73_SignChange;
wire signed  [32:1] CompareModule_L19F28T47_SignChange;
wire signed  [32:1] CompareModule_L19F50T69_SignChange;
wire signed  [32:1] CompareModule_L20F28T47_SignChange;
wire signed  [32:1] CompareModule_L20F50T69_SignChange;
wire  CompareModule_L15F27T38_Expr;
wire  CompareModule_L15F27T38_Expr_1;
wire  CompareModule_L13F28T52_Expr;
wire signed  [33:1] CompareModule_L13F28T52_ExprLhs;
wire signed  [33:1] CompareModule_L13F28T52_ExprRhs;
wire  CompareModule_L16F28T73_Expr;
wire signed  [33:1] CompareModule_L16F28T73_ExprLhs;
wire signed  [33:1] CompareModule_L16F28T73_ExprRhs;
wire  CompareModule_L17F28T73_Expr;
wire signed  [33:1] CompareModule_L17F28T73_ExprLhs;
wire signed  [33:1] CompareModule_L17F28T73_ExprRhs;
wire  CompareModule_L19F28T69_Expr;
wire signed  [32:1] CompareModule_L19F28T69_ExprLhs;
wire signed  [32:1] CompareModule_L19F28T69_ExprRhs;
wire  CompareModule_L20F28T69_Expr;
wire signed  [32:1] CompareModule_L20F28T69_ExprLhs;
wire signed  [32:1] CompareModule_L20F28T69_ExprRhs;
assign CompareModule_L13F28T52_Expr = CompareModule_L13F28T52_ExprLhs == CompareModule_L13F28T52_ExprRhs ? 1'b1 : 1'b0;
assign CompareModule_L16F28T73_Expr = CompareModule_L16F28T73_ExprLhs > CompareModule_L16F28T73_ExprRhs ? 1'b1 : 1'b0;
assign CompareModule_L17F28T73_Expr = CompareModule_L17F28T73_ExprLhs < CompareModule_L17F28T73_ExprRhs ? 1'b1 : 1'b0;
assign CompareModule_L19F28T69_Expr = CompareModule_L19F28T69_ExprLhs > CompareModule_L19F28T69_ExprRhs ? 1'b1 : 1'b0;
assign CompareModule_L20F28T69_Expr = CompareModule_L20F28T69_ExprLhs < CompareModule_L20F28T69_ExprRhs ? 1'b1 : 1'b0;
assign CompareModule_L15F27T38_Expr = ~CompareModule_L15F27T38_Expr_1;
assign CompareModule_L13F28T52_ExprLhs = { {1{1'b0}}, Inputs_Lhs }/*expand*/;
assign CompareModule_L13F28T52_ExprRhs = { {1{1'b0}}, Inputs_Rhs }/*expand*/;
assign CompareModule_L16F28T73_ExprLhs = { {1{1'b0}}, CompareModule_L16F28T49_SignChange }/*expand*/;
assign CompareModule_L16F28T73_ExprRhs = { {1{1'b0}}, CompareModule_L16F52T73_SignChange }/*expand*/;
assign CompareModule_L17F28T73_ExprLhs = { {1{1'b0}}, CompareModule_L17F28T49_SignChange }/*expand*/;
assign CompareModule_L17F28T73_ExprRhs = { {1{1'b0}}, CompareModule_L17F52T73_SignChange }/*expand*/;
assign CompareModule_L19F28T69_ExprLhs = CompareModule_L19F28T47_SignChange;
assign CompareModule_L19F28T69_ExprRhs = CompareModule_L19F50T69_SignChange;
assign CompareModule_L20F28T69_ExprLhs = CompareModule_L20F28T47_SignChange;
assign CompareModule_L20F28T69_ExprRhs = CompareModule_L20F50T69_SignChange;
assign CompareModule_L15F27T38_Expr_1 = internalEQ;
assign Inputs_Lhs = Lhs;
assign Inputs_Rhs = Rhs;
assign internalEQ = CompareModule_L13F28T52_Expr;
assign EQ = internalEQ;
assign NE = CompareModule_L15F27T38_Expr;
assign CompareModule_L16F28T49_SignChange = Inputs_Lhs;
assign CompareModule_L16F52T73_SignChange = Inputs_Rhs;
assign GTU = CompareModule_L16F28T73_Expr;
assign CompareModule_L17F28T49_SignChange = Inputs_Lhs;
assign CompareModule_L17F52T73_SignChange = Inputs_Rhs;
assign LTU = CompareModule_L17F28T73_Expr;
assign CompareModule_L19F28T47_SignChange = Inputs_Lhs/*cast*/;
assign CompareModule_L19F50T69_SignChange = Inputs_Rhs/*cast*/;
assign GTS = CompareModule_L19F28T69_Expr;
assign CompareModule_L20F28T47_SignChange = Inputs_Lhs/*cast*/;
assign CompareModule_L20F50T69_SignChange = Inputs_Rhs/*cast*/;
assign LTS = CompareModule_L20F28T69_Expr;
// [BEGIN USER ARCHITECTURE]
// [END USER ARCHITECTURE]
endmodule
