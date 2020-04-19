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
-- System configuration name is TransmitterModule_TopLevel, clock frequency is 1Hz, Top-level
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Quokka.all;

entity TransmitterModule_TopLevel is
    port
    (
-- [BEGIN USER PORTS]
-- [END USER PORTS]

Clock : in  std_logic;
Reset : in  std_logic;
Trigger : in  std_logic;
Ack : in  std_logic;
Data : in  unsigned(7 downto 0);
Bit : out  std_logic;
IsReady : out  std_logic;
IsTransmitting : out  std_logic;
IsTransmissionStarted : out  std_logic
    );
end entity;

-- FSM summary
-- Packages
architecture rtl of TransmitterModule_TopLevel is
-- [BEGIN USER SIGNALS]
-- [END USER SIGNALS]
constant HiSignal : std_logic := '1';
constant LoSignal : std_logic := '0';
constant Zero : std_logic := '0';
constant One : std_logic := '1';
constant true : std_logic := '1';
constant false : std_logic := '0';
constant TransmitterModule_L13F9L40T10_TransmitterModule_L16F22T41_Expr : std_logic := '0';
constant TransmitterModule_L13F9L40T10_TransmitterModule_L18F21L22T22_TransmitterModule_L19F45T46_Expr : std_logic := '0';
constant TransmitterModule_L13F9L40T10_TransmitterModule_L18F21L22T22_TransmitterModule_L21F41T68_Expr : std_logic := '1';
constant TransmitterModule_L13F9L40T10_TransmitterModule_L24F22T49_Expr : std_logic := '1';
constant TransmitterModule_L13F9L40T10_TransmitterModule_L25F42T43_Expr : unsigned(3 downto 1)  := "111";
constant TransmitterModule_L13F9L40T10_TransmitterModule_L26F21L28T22_TransmitterModule_L27F41T69_Expr : unsigned(2 downto 1)  := "10";
constant TransmitterModule_L13F9L40T10_TransmitterModule_L30F21L32T22_TransmitterModule_L31F68T69_Expr : std_logic := '1';
constant TransmitterModule_L13F9L40T10_TransmitterModule_L33F52T53_Expr : std_logic := '1';
constant TransmitterModule_L13F9L40T10_TransmitterModule_L35F22T50_Expr : unsigned(2 downto 1)  := "10";
constant TransmitterModule_L13F9L40T10_TransmitterModule_L37F41T60_Expr : std_logic := '0';
constant TransmitterModule_L9F46T65_Expr : std_logic := '0';
constant TransmitterModule_L10F52T79_Expr : std_logic := '1';
constant TransmitterModule_L11F59T78_Expr : std_logic := '0';
constant TransmitterModule_L11F99T126_Expr : std_logic := '1';
signal Inputs_Trigger : std_logic := '0';
signal Inputs_Ack : std_logic := '0';
signal Inputs_Data : unsigned(8 downto 1)  := "00000000";
signal NextState_FSM : unsigned(2 downto 1)  := "00";
signal NextState_Data : unsigned(8 downto 1)  := "00000000";
signal NextState_Counter : unsigned(8 downto 1)  := "00000000";
signal TransmitterModule_L13F9L40T10_TransmitterModule_L30F21L32T22_TransmitterModule_L31F45T70_Expr : unsigned(8 downto 1)  := "00000000";
signal TransmitterModule_L8F28T41_Index : std_logic := '0';
signal State_FSM : unsigned(2 downto 1)  := "00";
constant State_FSMDefault : unsigned(2 downto 1)  := "00";
signal State_Data : unsigned(8 downto 1)  := "00000000";
constant State_DataDefault : unsigned(8 downto 1)  := "00000000";
signal State_Counter : unsigned(8 downto 1)  := "00000000";
constant State_CounterDefault : unsigned(8 downto 1)  := "00000000";
signal TransmitterModule_L13F9L40T10_TransmitterModule_L33F38T53_Expr : unsigned(8 downto 1)  := "00000000";
signal TransmitterModule_L13F9L40T10_TransmitterModule_L33F38T53_Expr_1 : unsigned(8 downto 1)  := "00000000";
signal TransmitterModule_L11F46T126_Expr : std_logic := '0';
signal TransmitterModule_L11F46T126_Expr_1 : std_logic := '0';
signal TransmitterModule_L11F46T126_Expr_2 : std_logic := '0';
signal TransmitterModule_L13F9L40T10_TransmitterModule_L30F21L32T22_TransmitterModule_L31F52T69_Expr : unsigned(10 downto 1)  := "0000000000";
signal TransmitterModule_L13F9L40T10_TransmitterModule_L30F21L32T22_TransmitterModule_L31F52T69_Expr_1 : signed(10 downto 1)  := "0000000000";
signal TransmitterModule_L13F9L40T10_TransmitterModule_L30F21L32T22_TransmitterModule_L31F52T69_Expr_2 : signed(10 downto 1)  := "0000000000";
signal TransmitterModule_L13F9L40T10_TransmitterModule_L16F17L23T27_Case : std_logic := '0';
signal TransmitterModule_L13F9L40T10_TransmitterModule_L16F17L23T27_CaseLhs : signed(3 downto 1)  := "000";
signal TransmitterModule_L13F9L40T10_TransmitterModule_L16F17L23T27_CaseRhs : signed(3 downto 1)  := "000";
signal TransmitterModule_L13F9L40T10_TransmitterModule_L24F17L34T27_Case : std_logic := '0';
signal TransmitterModule_L13F9L40T10_TransmitterModule_L24F17L34T27_CaseLhs : signed(3 downto 1)  := "000";
signal TransmitterModule_L13F9L40T10_TransmitterModule_L24F17L34T27_CaseRhs : signed(3 downto 1)  := "000";
signal TransmitterModule_L13F9L40T10_TransmitterModule_L25F25T43_Expr : std_logic := '0';
signal TransmitterModule_L13F9L40T10_TransmitterModule_L25F25T43_ExprLhs : signed(9 downto 1)  := "000000000";
signal TransmitterModule_L13F9L40T10_TransmitterModule_L25F25T43_ExprRhs : signed(9 downto 1)  := "000000000";
signal TransmitterModule_L13F9L40T10_TransmitterModule_L35F17L38T27_Case : std_logic := '0';
signal TransmitterModule_L13F9L40T10_TransmitterModule_L35F17L38T27_CaseLhs : signed(3 downto 1)  := "000";
signal TransmitterModule_L13F9L40T10_TransmitterModule_L35F17L38T27_CaseRhs : signed(3 downto 1)  := "000";
signal TransmitterModule_L9F32T65_Expr : std_logic := '0';
signal TransmitterModule_L9F32T65_ExprLhs : signed(3 downto 1)  := "000";
signal TransmitterModule_L9F32T65_ExprRhs : signed(3 downto 1)  := "000";
signal TransmitterModule_L10F39T79_Expr : std_logic := '0';
signal TransmitterModule_L10F39T79_ExprLhs : signed(3 downto 1)  := "000";
signal TransmitterModule_L10F39T79_ExprRhs : signed(3 downto 1)  := "000";
signal TransmitterModule_L11F46T78_Expr : std_logic := '0';
signal TransmitterModule_L11F46T78_ExprLhs : signed(3 downto 1)  := "000";
signal TransmitterModule_L11F46T78_ExprRhs : signed(3 downto 1)  := "000";
signal TransmitterModule_L11F82T126_Expr : std_logic := '0';
signal TransmitterModule_L11F82T126_ExprLhs : signed(3 downto 1)  := "000";
signal TransmitterModule_L11F82T126_ExprRhs : signed(3 downto 1)  := "000";
begin
process (Clock, NextState_Counter, NextState_Data, NextState_FSM, Reset)
begin
if rising_edge(Clock) then
if ( Reset = '1' ) then
State_FSM <= State_FSMDefault;
State_Data <= State_DataDefault;
State_Counter <= State_CounterDefault;
else
State_FSM <= NextState_FSM;
State_Data <= NextState_Data;
State_Counter <= NextState_Counter;
end if;
end if;
end process;
    TransmitterModule_L13F9L40T10_TransmitterModule_L16F17L23T27_Case <= '1' when (signed(resize(TransmitterModule_L13F9L40T10_TransmitterModule_L16F17L23T27_CaseLhs, TransmitterModule_L13F9L40T10_TransmitterModule_L16F17L23T27_CaseLhs'length + 1)) = signed(resize(TransmitterModule_L13F9L40T10_TransmitterModule_L16F17L23T27_CaseRhs, TransmitterModule_L13F9L40T10_TransmitterModule_L16F17L23T27_CaseRhs'length + 1))) else '0';
    TransmitterModule_L13F9L40T10_TransmitterModule_L24F17L34T27_Case <= '1' when (signed(resize(TransmitterModule_L13F9L40T10_TransmitterModule_L24F17L34T27_CaseLhs, TransmitterModule_L13F9L40T10_TransmitterModule_L24F17L34T27_CaseLhs'length + 1)) = signed(resize(TransmitterModule_L13F9L40T10_TransmitterModule_L24F17L34T27_CaseRhs, TransmitterModule_L13F9L40T10_TransmitterModule_L24F17L34T27_CaseRhs'length + 1))) else '0';
    TransmitterModule_L13F9L40T10_TransmitterModule_L25F25T43_Expr <= '1' when (signed(resize(TransmitterModule_L13F9L40T10_TransmitterModule_L25F25T43_ExprLhs, TransmitterModule_L13F9L40T10_TransmitterModule_L25F25T43_ExprLhs'length + 1)) = signed(resize(TransmitterModule_L13F9L40T10_TransmitterModule_L25F25T43_ExprRhs, TransmitterModule_L13F9L40T10_TransmitterModule_L25F25T43_ExprRhs'length + 1))) else '0';
    TransmitterModule_L13F9L40T10_TransmitterModule_L35F17L38T27_Case <= '1' when (signed(resize(TransmitterModule_L13F9L40T10_TransmitterModule_L35F17L38T27_CaseLhs, TransmitterModule_L13F9L40T10_TransmitterModule_L35F17L38T27_CaseLhs'length + 1)) = signed(resize(TransmitterModule_L13F9L40T10_TransmitterModule_L35F17L38T27_CaseRhs, TransmitterModule_L13F9L40T10_TransmitterModule_L35F17L38T27_CaseRhs'length + 1))) else '0';
    TransmitterModule_L9F32T65_Expr <= '1' when (signed(resize(TransmitterModule_L9F32T65_ExprLhs, TransmitterModule_L9F32T65_ExprLhs'length + 1)) = signed(resize(TransmitterModule_L9F32T65_ExprRhs, TransmitterModule_L9F32T65_ExprRhs'length + 1))) else '0';
    TransmitterModule_L10F39T79_Expr <= '1' when (signed(resize(TransmitterModule_L10F39T79_ExprLhs, TransmitterModule_L10F39T79_ExprLhs'length + 1)) = signed(resize(TransmitterModule_L10F39T79_ExprRhs, TransmitterModule_L10F39T79_ExprRhs'length + 1))) else '0';
    TransmitterModule_L11F46T78_Expr <= '1' when (signed(resize(TransmitterModule_L11F46T78_ExprLhs, TransmitterModule_L11F46T78_ExprLhs'length + 1)) = signed(resize(TransmitterModule_L11F46T78_ExprRhs, TransmitterModule_L11F46T78_ExprRhs'length + 1))) else '0';
    TransmitterModule_L11F82T126_Expr <= '1' when (signed(resize(TransmitterModule_L11F82T126_ExprLhs, TransmitterModule_L11F82T126_ExprLhs'length + 1)) = signed(resize(TransmitterModule_L11F82T126_ExprRhs, TransmitterModule_L11F82T126_ExprRhs'length + 1))) else '0';
process(TransmitterModule_L13F9L40T10_TransmitterModule_L33F38T53_Expr_1)
alias output is TransmitterModule_L13F9L40T10_TransmitterModule_L33F38T53_Expr;
alias source0 is TransmitterModule_L13F9L40T10_TransmitterModule_L33F38T53_Expr_1;
begin
-- Output: TransmitterModule_L13F9L40T10_TransmitterModule_L33F38T53_Expr, Width: 8, ShiftBy: 1, Sources: 1
output(1) <= source0(2);
output(2) <= source0(3);
output(3) <= source0(4);
output(4) <= source0(5);
output(5) <= source0(6);
output(6) <= source0(7);
output(7) <= source0(8);
output(8) <= '0';
end process;

process(TransmitterModule_L11F46T126_Expr_1, TransmitterModule_L11F46T126_Expr_2)
begin
TransmitterModule_L11F46T126_Expr <= TransmitterModule_L11F46T126_Expr_1 AND TransmitterModule_L11F46T126_Expr_2;

    end process;

process(TransmitterModule_L13F9L40T10_TransmitterModule_L30F21L32T22_TransmitterModule_L31F52T69_Expr_1, TransmitterModule_L13F9L40T10_TransmitterModule_L30F21L32T22_TransmitterModule_L31F52T69_Expr_2)
begin
    TransmitterModule_L13F9L40T10_TransmitterModule_L30F21L32T22_TransmitterModule_L31F52T69_Expr <= resize(unsigned(signed(resize(TransmitterModule_L13F9L40T10_TransmitterModule_L30F21L32T22_TransmitterModule_L31F52T69_Expr_1, TransmitterModule_L13F9L40T10_TransmitterModule_L30F21L32T22_TransmitterModule_L31F52T69_Expr_1'length + 1)) + signed(resize(TransmitterModule_L13F9L40T10_TransmitterModule_L30F21L32T22_TransmitterModule_L31F52T69_Expr_2, TransmitterModule_L13F9L40T10_TransmitterModule_L30F21L32T22_TransmitterModule_L31F52T69_Expr_2'length + 1))), TransmitterModule_L13F9L40T10_TransmitterModule_L30F21L32T22_TransmitterModule_L31F52T69_Expr'length);

end process;
process(Inputs_Ack, Inputs_Data, Inputs_Trigger, State_Counter, State_Data, State_FSM, TransmitterModule_L13F9L40T10_TransmitterModule_L16F17L23T27_Case, TransmitterModule_L13F9L40T10_TransmitterModule_L24F17L34T27_Case, TransmitterModule_L13F9L40T10_TransmitterModule_L25F25T43_Expr, TransmitterModule_L13F9L40T10_TransmitterModule_L30F21L32T22_TransmitterModule_L31F45T70_Expr, TransmitterModule_L13F9L40T10_TransmitterModule_L33F38T53_Expr, TransmitterModule_L13F9L40T10_TransmitterModule_L35F17L38T27_Case)
begin
NextState_FSM <= unsigned(State_FSM);
NextState_Data <= unsigned(State_Data);
NextState_Counter <= unsigned(State_Counter);
if ( TransmitterModule_L13F9L40T10_TransmitterModule_L16F17L23T27_Case = '1' ) then
if ( Inputs_Trigger = '1' ) then
NextState_Counter <= (1 => TransmitterModule_L13F9L40T10_TransmitterModule_L18F21L22T22_TransmitterModule_L19F45T46_Expr, others => '0');
NextState_Data <= unsigned(Inputs_Data);
NextState_FSM <= (1 => TransmitterModule_L13F9L40T10_TransmitterModule_L18F21L22T22_TransmitterModule_L21F41T68_Expr, others => '0');
end if;
elsif ( TransmitterModule_L13F9L40T10_TransmitterModule_L24F17L34T27_Case = '1' ) then
if ( TransmitterModule_L13F9L40T10_TransmitterModule_L25F25T43_Expr = '1' ) then
NextState_FSM <= unsigned(TransmitterModule_L13F9L40T10_TransmitterModule_L26F21L28T22_TransmitterModule_L27F41T69_Expr);
else
NextState_Counter <= unsigned(TransmitterModule_L13F9L40T10_TransmitterModule_L30F21L32T22_TransmitterModule_L31F45T70_Expr);
end if;
NextState_Data <= unsigned(TransmitterModule_L13F9L40T10_TransmitterModule_L33F38T53_Expr);
elsif ( TransmitterModule_L13F9L40T10_TransmitterModule_L35F17L38T27_Case = '1' ) then
if ( Inputs_Ack = '1' ) then
NextState_FSM <= (1 => TransmitterModule_L13F9L40T10_TransmitterModule_L37F41T60_Expr, others => '0');
end if;
end if;
end process;
-- Top-level entity connections
process(Ack, Clock, Data, Reset, TransmitterModule_TopLevel_Bit, TransmitterModule_TopLevel_IsReady, TransmitterModule_TopLevel_IsTransmissionStarted, TransmitterModule_TopLevel_IsTransmitting, Trigger)
begin
	TransmitterModule_TopLevel_Trigger <= Trigger;
	TransmitterModule_TopLevel_Ack <= Ack;
	TransmitterModule_TopLevel_Data <= Data;
TransmitterModule_TopLevel_Clock <= Clock;
TransmitterModule_TopLevel_Reset <= NOT Reset;
Bit <= TransmitterModule_TopLevel_Bit;
IsReady <= TransmitterModule_TopLevel_IsReady;
IsTransmitting <= TransmitterModule_TopLevel_IsTransmitting;
IsTransmissionStarted <= TransmitterModule_TopLevel_IsTransmissionStarted;
end process;
process(Ack, Data, NextState_FSM, State_Counter, State_Data, State_FSM, TransmitterModule_L10F39T79_Expr, TransmitterModule_L11F46T126_Expr, TransmitterModule_L11F46T78_Expr, TransmitterModule_L11F82T126_Expr, TransmitterModule_L13F9L40T10_TransmitterModule_L30F21L32T22_TransmitterModule_L31F52T69_Expr, TransmitterModule_L8F28T41_Index, TransmitterModule_L9F32T65_Expr, Trigger)
begin
TransmitterModule_L13F9L40T10_TransmitterModule_L16F17L23T27_CaseLhs <= signed(resize(State_FSM, TransmitterModule_L13F9L40T10_TransmitterModule_L16F17L23T27_CaseLhs'length));
TransmitterModule_L13F9L40T10_TransmitterModule_L16F17L23T27_CaseRhs <= (1 => TransmitterModule_L13F9L40T10_TransmitterModule_L16F22T41_Expr, others => '0');
TransmitterModule_L13F9L40T10_TransmitterModule_L24F17L34T27_CaseLhs <= signed(resize(State_FSM, TransmitterModule_L13F9L40T10_TransmitterModule_L24F17L34T27_CaseLhs'length));
TransmitterModule_L13F9L40T10_TransmitterModule_L24F17L34T27_CaseRhs <= (1 => TransmitterModule_L13F9L40T10_TransmitterModule_L24F22T49_Expr, others => '0');
TransmitterModule_L13F9L40T10_TransmitterModule_L25F25T43_ExprLhs <= signed(resize(State_Counter, TransmitterModule_L13F9L40T10_TransmitterModule_L25F25T43_ExprLhs'length));
TransmitterModule_L13F9L40T10_TransmitterModule_L25F25T43_ExprRhs <= signed(resize(TransmitterModule_L13F9L40T10_TransmitterModule_L25F42T43_Expr, TransmitterModule_L13F9L40T10_TransmitterModule_L25F25T43_ExprRhs'length));
TransmitterModule_L13F9L40T10_TransmitterModule_L35F17L38T27_CaseLhs <= signed(resize(State_FSM, TransmitterModule_L13F9L40T10_TransmitterModule_L35F17L38T27_CaseLhs'length));
TransmitterModule_L13F9L40T10_TransmitterModule_L35F17L38T27_CaseRhs <= signed(resize(TransmitterModule_L13F9L40T10_TransmitterModule_L35F22T50_Expr, TransmitterModule_L13F9L40T10_TransmitterModule_L35F17L38T27_CaseRhs'length));
TransmitterModule_L9F32T65_ExprLhs <= signed(resize(State_FSM, TransmitterModule_L9F32T65_ExprLhs'length));
TransmitterModule_L9F32T65_ExprRhs <= (1 => TransmitterModule_L9F46T65_Expr, others => '0');
TransmitterModule_L10F39T79_ExprLhs <= signed(resize(State_FSM, TransmitterModule_L10F39T79_ExprLhs'length));
TransmitterModule_L10F39T79_ExprRhs <= (1 => TransmitterModule_L10F52T79_Expr, others => '0');
TransmitterModule_L11F46T78_ExprLhs <= signed(resize(State_FSM, TransmitterModule_L11F46T78_ExprLhs'length));
TransmitterModule_L11F46T78_ExprRhs <= (1 => TransmitterModule_L11F59T78_Expr, others => '0');
TransmitterModule_L11F82T126_ExprLhs <= signed(resize(NextState_FSM, TransmitterModule_L11F82T126_ExprLhs'length));
TransmitterModule_L11F82T126_ExprRhs <= (1 => TransmitterModule_L11F99T126_Expr, others => '0');
TransmitterModule_L13F9L40T10_TransmitterModule_L33F38T53_Expr_1 <= unsigned(State_Data);
TransmitterModule_L11F46T126_Expr_1 <= TransmitterModule_L11F46T78_Expr;
TransmitterModule_L11F46T126_Expr_2 <= TransmitterModule_L11F82T126_Expr;
TransmitterModule_L13F9L40T10_TransmitterModule_L30F21L32T22_TransmitterModule_L31F52T69_Expr_1 <= signed(resize(State_Counter, TransmitterModule_L13F9L40T10_TransmitterModule_L30F21L32T22_TransmitterModule_L31F52T69_Expr_1'length));
TransmitterModule_L13F9L40T10_TransmitterModule_L30F21L32T22_TransmitterModule_L31F52T69_Expr_2 <= (1 => TransmitterModule_L13F9L40T10_TransmitterModule_L30F21L32T22_TransmitterModule_L31F68T69_Expr, others => '0');
Inputs_Trigger <= Trigger;
Inputs_Ack <= Ack;
Inputs_Data <= unsigned(Data);
TransmitterModule_L13F9L40T10_TransmitterModule_L30F21L32T22_TransmitterModule_L31F45T70_Expr <= unsigned(TransmitterModule_L13F9L40T10_TransmitterModule_L30F21L32T22_TransmitterModule_L31F52T69_Expr(8 downto 1));
TransmitterModule_L8F28T41_Index <= State_Data(1);
Bit <= TransmitterModule_L8F28T41_Index;
IsReady <= TransmitterModule_L9F32T65_Expr;
IsTransmitting <= TransmitterModule_L10F39T79_Expr;
IsTransmissionStarted <= TransmitterModule_L11F46T126_Expr;
end process;
-- [BEGIN USER ARCHITECTURE]
-- [END USER ARCHITECTURE]
end architecture;
