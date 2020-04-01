-- PLEASE READ THIS, IT MAY SAVE YOU SOME TIME AND MONEY, THANK YOU!
-- * This file was generated by Quokka FPGA Toolkit.
-- * Generated code is your property, do whatever you want with it
-- * Place custom code between [BEGIN USER ***] and [END USER ***].
-- * CAUTION: All code outside of [USER] scope is subject to regeneration.
-- * Bad things happen sometimes in developer's life,
--   it is recommended to use source control management software (e.g. git, bzr etc) to keep your custom code safe'n'sound.
-- * Internal structure of code is subject to change.
--   You can use some of signals in custom code, but most likely they will not exist in future (e.g. will get shorter or gone completely)
-- * Please send your feedback, comments, improvement ideas etc. to evmuryshkin@gmail.com
-- * Visit https://github.com/EvgenyMuryshkin/QuokkaEvaluation to access latest version of playground
-- 
-- DISCLAIMER:
--   Code comes AS-IS, it is your responsibility to make sure it is working as expected
--   no responsibility will be taken for any loss or damage caused by use of Quokka toolkit.
-- 
-- System configuration name is EmitterModule_TopLevel, clock frequency is 1Hz, Top-level
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Quokka.all;

entity EmitterModule_TopLevel is
    port
    (
-- [BEGIN USER PORTS]
-- [END USER PORTS]

Clock : in  std_logic;
Reset : in  std_logic;
EmitterModuleIsEnabled : in  std_logic;
EmitterModuleAck : in  std_logic;
EmitterModuleData : out  unsigned(7 downto 0);
EmitterModuleHasData : out  std_logic
    );
end entity;

-- FSM summary
-- Packages
architecture rtl of EmitterModule_TopLevel is
-- [BEGIN USER SIGNALS]
-- [END USER SIGNALS]
constant HiSignal : std_logic := '1';
constant LoSignal : std_logic := '0';
signal EmitterModule_TopLevel_Clock : std_logic := '0';
signal EmitterModule_TopLevel_Reset : std_logic := '0';
signal EmitterModule_TopLevel_EmitterModuleIsEnabled : std_logic := '0';
signal EmitterModule_TopLevel_EmitterModuleAck : std_logic := '0';
signal EmitterModule_TopLevel_EmitterModuleData : unsigned(8 downto 1) := (others => '0');
signal EmitterModule_TopLevel_EmitterModuleHasData : std_logic := '0';
signal EmitterModule_TopLevel_EmitterModule_Clock : std_logic := '0';
signal EmitterModule_TopLevel_EmitterModule_Reset : std_logic := '0';
signal EmitterModule_TopLevel_EmitterModule_IsEnabled : std_logic := '0';
signal EmitterModule_TopLevel_EmitterModule_Ack : std_logic := '0';
signal EmitterModule_TopLevel_EmitterModule_Data : unsigned(8 downto 1) := (others => '0');
signal EmitterModule_TopLevel_EmitterModule_HasData : std_logic := '0';
constant EmitterModule_TopLevel_EmitterModule_Zero : std_logic := '0';
constant EmitterModule_TopLevel_EmitterModule_One : std_logic := '1';
constant EmitterModule_TopLevel_EmitterModule_true : std_logic := '1';
constant EmitterModule_TopLevel_EmitterModule_false : std_logic := '0';
constant EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L32F22T41_Expr : std_logic := '0';
constant EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L34F41T65_Expr : std_logic := '1';
constant EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L36F22T46_Expr : std_logic := '1';
constant EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L38F21L41T22_EmitterModule_L39F41T60_Expr : std_logic := '0';
constant EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L38F21L41T22_EmitterModule_L40F62T63_Expr : std_logic := '1';
constant EmitterModule_TopLevel_EmitterModule_EmitterModule_L26F45T64_Expr : std_logic := '0';
signal EmitterModule_TopLevel_EmitterModule_Inputs_IsEnabled : std_logic := '0';
signal EmitterModule_TopLevel_EmitterModule_Inputs_Ack : std_logic := '0';
signal EmitterModule_TopLevel_EmitterModule_NextState_FSM : signed(32 downto 1)  := "00000000000000000000000000000000";
signal EmitterModule_TopLevel_EmitterModule_NextState_Data : unsigned(8 downto 1)  := "00000000";
signal EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L38F21L41T22_EmitterModule_L40F42T64_Expr : unsigned(8 downto 1)  := "00000000";
signal EmitterModule_TopLevel_EmitterModule_State_FSM : signed(32 downto 1)  := "00000000000000000000000000000000";
constant EmitterModule_TopLevel_EmitterModule_State_FSMDefault : signed(32 downto 1)  := "00000000000000000000000000000000";
signal EmitterModule_TopLevel_EmitterModule_State_FSMWriteEnable : std_logic := '0';
signal EmitterModule_TopLevel_EmitterModule_State_Data : unsigned(8 downto 1)  := "00000000";
constant EmitterModule_TopLevel_EmitterModule_State_DataDefault : unsigned(8 downto 1)  := "00000000";
signal EmitterModule_TopLevel_EmitterModule_State_DataWriteEnable : std_logic := '0';
signal EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L38F21L41T22_EmitterModule_L40F49T63_Expr : unsigned(10 downto 1)  := "0000000000";
signal EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L38F21L41T22_EmitterModule_L40F49T63_Expr_1 : signed(10 downto 1)  := "0000000000";
signal EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L38F21L41T22_EmitterModule_L40F49T63_Expr_2 : signed(10 downto 1)  := "0000000000";
signal EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L32F17L35T27_Case : std_logic := '0';
signal EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L32F17L35T27_CaseLhs : signed(33 downto 1)  := "000000000000000000000000000000000";
signal EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L32F17L35T27_CaseRhs : signed(33 downto 1)  := "000000000000000000000000000000000";
signal EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L36F17L42T27_Case : std_logic := '0';
signal EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L36F17L42T27_CaseLhs : signed(33 downto 1)  := "000000000000000000000000000000000";
signal EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L36F17L42T27_CaseRhs : signed(33 downto 1)  := "000000000000000000000000000000000";
signal EmitterModule_TopLevel_EmitterModule_EmitterModule_L26F32T64_Expr : std_logic := '0';
signal EmitterModule_TopLevel_EmitterModule_EmitterModule_L26F32T64_ExprLhs : signed(33 downto 1)  := "000000000000000000000000000000000";
signal EmitterModule_TopLevel_EmitterModule_EmitterModule_L26F32T64_ExprRhs : signed(33 downto 1)  := "000000000000000000000000000000000";
signal BoardSignals : BoardSignalsType;
signal InternalReset : std_logic := '0';
signal EmitterModule_TopLevel_EmitterModule_State_FSMQ : signed(32 downto 1)  := "00000000000000000000000000000000";
signal EmitterModule_TopLevel_EmitterModule_State_FSMD : signed(32 downto 1)  := "00000000000000000000000000000000";
signal EmitterModule_TopLevel_EmitterModule_State_DataQ : unsigned(8 downto 1)  := "00000000";
signal EmitterModule_TopLevel_EmitterModule_State_DataD : unsigned(8 downto 1)  := "00000000";
begin
work.Quokka.BoardSignalsProc(BoardSignals,EmitterModule_TopLevel_EmitterModule_Clock,EmitterModule_TopLevel_EmitterModule_Reset,InternalReset);
process (BoardSignals, EmitterModule_TopLevel_EmitterModule_State_FSMD, EmitterModule_TopLevel_EmitterModule_State_FSMQ, EmitterModule_TopLevel_EmitterModule_State_FSMWriteEnable)
begin
if rising_edge(BoardSignals.Clock) then
if ( BoardSignals.Reset = '1' ) then
EmitterModule_TopLevel_EmitterModule_State_FSMQ <= EmitterModule_TopLevel_EmitterModule_State_FSMDefault;
elsif ( EmitterModule_TopLevel_EmitterModule_State_FSMWriteEnable = '1' ) then
EmitterModule_TopLevel_EmitterModule_State_FSMQ <= EmitterModule_TopLevel_EmitterModule_State_FSMD;
else
EmitterModule_TopLevel_EmitterModule_State_FSMQ <= EmitterModule_TopLevel_EmitterModule_State_FSMQ;
end if;
end if;
end process;
process (BoardSignals, EmitterModule_TopLevel_EmitterModule_State_DataD, EmitterModule_TopLevel_EmitterModule_State_DataQ, EmitterModule_TopLevel_EmitterModule_State_DataWriteEnable)
begin
if rising_edge(BoardSignals.Clock) then
if ( BoardSignals.Reset = '1' ) then
EmitterModule_TopLevel_EmitterModule_State_DataQ <= EmitterModule_TopLevel_EmitterModule_State_DataDefault;
elsif ( EmitterModule_TopLevel_EmitterModule_State_DataWriteEnable = '1' ) then
EmitterModule_TopLevel_EmitterModule_State_DataQ <= EmitterModule_TopLevel_EmitterModule_State_DataD;
else
EmitterModule_TopLevel_EmitterModule_State_DataQ <= EmitterModule_TopLevel_EmitterModule_State_DataQ;
end if;
end if;
end process;
    EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L32F17L35T27_Case <= '1' when (signed(resize(EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L32F17L35T27_CaseLhs, EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L32F17L35T27_CaseLhs'length + 1)) = signed(resize(EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L32F17L35T27_CaseRhs, EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L32F17L35T27_CaseRhs'length + 1))) else '0';
    EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L36F17L42T27_Case <= '1' when (signed(resize(EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L36F17L42T27_CaseLhs, EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L36F17L42T27_CaseLhs'length + 1)) = signed(resize(EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L36F17L42T27_CaseRhs, EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L36F17L42T27_CaseRhs'length + 1))) else '0';
    EmitterModule_TopLevel_EmitterModule_EmitterModule_L26F32T64_Expr <= '1' when (signed(resize(EmitterModule_TopLevel_EmitterModule_EmitterModule_L26F32T64_ExprLhs, EmitterModule_TopLevel_EmitterModule_EmitterModule_L26F32T64_ExprLhs'length + 1)) = signed(resize(EmitterModule_TopLevel_EmitterModule_EmitterModule_L26F32T64_ExprRhs, EmitterModule_TopLevel_EmitterModule_EmitterModule_L26F32T64_ExprRhs'length + 1))) else '0';

process(EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L38F21L41T22_EmitterModule_L40F49T63_Expr_1, EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L38F21L41T22_EmitterModule_L40F49T63_Expr_2)
begin
    EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L38F21L41T22_EmitterModule_L40F49T63_Expr <= resize(unsigned(signed(resize(EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L38F21L41T22_EmitterModule_L40F49T63_Expr_1, EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L38F21L41T22_EmitterModule_L40F49T63_Expr_1'length + 1)) + signed(resize(EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L38F21L41T22_EmitterModule_L40F49T63_Expr_2, EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L38F21L41T22_EmitterModule_L40F49T63_Expr_2'length + 1))), EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L38F21L41T22_EmitterModule_L40F49T63_Expr'length);

end process;
process(EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L32F17L35T27_Case, EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L36F17L42T27_Case, EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L38F21L41T22_EmitterModule_L40F42T64_Expr, EmitterModule_TopLevel_EmitterModule_Inputs_Ack, EmitterModule_TopLevel_EmitterModule_Inputs_IsEnabled, EmitterModule_TopLevel_EmitterModule_State_Data, EmitterModule_TopLevel_EmitterModule_State_FSM)
begin
EmitterModule_TopLevel_EmitterModule_NextState_FSM <= signed(EmitterModule_TopLevel_EmitterModule_State_FSM);
EmitterModule_TopLevel_EmitterModule_NextState_Data <= unsigned(EmitterModule_TopLevel_EmitterModule_State_Data);
if ( EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L32F17L35T27_Case = '1' ) then
if ( EmitterModule_TopLevel_EmitterModule_Inputs_IsEnabled = '1' ) then
EmitterModule_TopLevel_EmitterModule_NextState_FSM <= (1 => EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L34F41T65_Expr, others => '0');
end if;
else
if ( EmitterModule_TopLevel_EmitterModule_Inputs_Ack = '1' ) then
EmitterModule_TopLevel_EmitterModule_NextState_FSM <= (1 => EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L38F21L41T22_EmitterModule_L39F41T60_Expr, others => '0');
EmitterModule_TopLevel_EmitterModule_NextState_Data <= unsigned(EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L38F21L41T22_EmitterModule_L40F42T64_Expr);
end if;
end if;
end process;
-- Top-level entity connections
process(Clock, EmitterModule_TopLevel_EmitterModuleData, EmitterModule_TopLevel_EmitterModuleHasData, EmitterModuleAck, EmitterModuleIsEnabled, Reset)
begin
	EmitterModule_TopLevel_EmitterModuleIsEnabled <= EmitterModuleIsEnabled;
	EmitterModule_TopLevel_EmitterModuleAck <= EmitterModuleAck;
EmitterModule_TopLevel_Clock <= Clock;
EmitterModule_TopLevel_Reset <= NOT Reset;
EmitterModuleData <= EmitterModule_TopLevel_EmitterModuleData;
EmitterModuleHasData <= EmitterModule_TopLevel_EmitterModuleHasData;
end process;
process(EmitterModule_TopLevel_Clock, EmitterModule_TopLevel_EmitterModule_Ack, EmitterModule_TopLevel_EmitterModule_Data, EmitterModule_TopLevel_EmitterModule_EmitterModule_L26F32T64_Expr, EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L38F21L41T22_EmitterModule_L40F49T63_Expr, EmitterModule_TopLevel_EmitterModule_HasData, EmitterModule_TopLevel_EmitterModule_IsEnabled, EmitterModule_TopLevel_EmitterModule_NextState_Data, EmitterModule_TopLevel_EmitterModule_NextState_FSM, EmitterModule_TopLevel_EmitterModule_State_Data, EmitterModule_TopLevel_EmitterModule_State_DataQ, EmitterModule_TopLevel_EmitterModule_State_FSM, EmitterModule_TopLevel_EmitterModule_State_FSMQ, EmitterModule_TopLevel_EmitterModuleAck, EmitterModule_TopLevel_EmitterModuleIsEnabled, EmitterModule_TopLevel_Reset)
begin
EmitterModule_TopLevel_EmitterModule_State_FSM <= EmitterModule_TopLevel_EmitterModule_State_FSMQ;
EmitterModule_TopLevel_EmitterModule_State_FSMD <= EmitterModule_TopLevel_EmitterModule_NextState_FSM;
EmitterModule_TopLevel_EmitterModule_State_FSMWriteEnable <= HiSignal;
EmitterModule_TopLevel_EmitterModule_State_Data <= EmitterModule_TopLevel_EmitterModule_State_DataQ;
EmitterModule_TopLevel_EmitterModule_State_DataD <= EmitterModule_TopLevel_EmitterModule_NextState_Data;
EmitterModule_TopLevel_EmitterModule_State_DataWriteEnable <= HiSignal;
EmitterModule_TopLevel_EmitterModule_Clock <= EmitterModule_TopLevel_Clock;
EmitterModule_TopLevel_EmitterModule_Reset <= EmitterModule_TopLevel_Reset;
EmitterModule_TopLevel_EmitterModule_IsEnabled <= EmitterModule_TopLevel_EmitterModuleIsEnabled;
EmitterModule_TopLevel_EmitterModule_Ack <= EmitterModule_TopLevel_EmitterModuleAck;
EmitterModule_TopLevel_EmitterModuleData <= EmitterModule_TopLevel_EmitterModule_Data;
EmitterModule_TopLevel_EmitterModuleHasData <= EmitterModule_TopLevel_EmitterModule_HasData;
EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L32F17L35T27_CaseLhs <= signed(resize(EmitterModule_TopLevel_EmitterModule_State_FSM, EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L32F17L35T27_CaseLhs'length));
EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L32F17L35T27_CaseRhs <= (1 => EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L32F22T41_Expr, others => '0');
EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L36F17L42T27_CaseLhs <= signed(resize(EmitterModule_TopLevel_EmitterModule_State_FSM, EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L36F17L42T27_CaseLhs'length));
EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L36F17L42T27_CaseRhs <= (1 => EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L36F22T46_Expr, others => '0');
EmitterModule_TopLevel_EmitterModule_EmitterModule_L26F32T64_ExprLhs <= signed(resize(EmitterModule_TopLevel_EmitterModule_State_FSM, EmitterModule_TopLevel_EmitterModule_EmitterModule_L26F32T64_ExprLhs'length));
EmitterModule_TopLevel_EmitterModule_EmitterModule_L26F32T64_ExprRhs <= (1 => EmitterModule_TopLevel_EmitterModule_EmitterModule_L26F45T64_Expr, others => '0');
EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L38F21L41T22_EmitterModule_L40F49T63_Expr_1 <= signed(resize(EmitterModule_TopLevel_EmitterModule_State_Data, EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L38F21L41T22_EmitterModule_L40F49T63_Expr_1'length));
EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L38F21L41T22_EmitterModule_L40F49T63_Expr_2 <= (1 => EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L38F21L41T22_EmitterModule_L40F62T63_Expr, others => '0');
EmitterModule_TopLevel_EmitterModule_Inputs_IsEnabled <= EmitterModule_TopLevel_EmitterModule_IsEnabled;
EmitterModule_TopLevel_EmitterModule_Inputs_Ack <= EmitterModule_TopLevel_EmitterModule_Ack;
EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L38F21L41T22_EmitterModule_L40F42T64_Expr <= unsigned(EmitterModule_TopLevel_EmitterModule_EmitterModule_L28F9L44T10_EmitterModule_L29F9L44T10_EmitterModule_L38F21L41T22_EmitterModule_L40F49T63_Expr(8 downto 1));
EmitterModule_TopLevel_EmitterModule_Data <= unsigned(EmitterModule_TopLevel_EmitterModule_State_Data);
EmitterModule_TopLevel_EmitterModule_HasData <= EmitterModule_TopLevel_EmitterModule_EmitterModule_L26F32T64_Expr;
end process;
-- [BEGIN USER ARCHITECTURE]
-- [END USER ARCHITECTURE]
end architecture;