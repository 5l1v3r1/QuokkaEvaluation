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
-- System configuration name is MemoryModule_TopLevel, clock frequency is 1Hz, Top-level
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Quokka.all;

entity MemoryModule_TopLevel is
    port
    (
-- [BEGIN USER PORTS]
-- [END USER PORTS]

Clock : in  std_logic;
Reset : in  std_logic;
MemoryModuleReadAddress : in  unsigned(7 downto 0);
MemoryModuleWriteAddress : in  unsigned(7 downto 0);
MemoryModuleWriteData : in  unsigned(15 downto 0)
    );
end entity;

-- FSM summary
-- Packages
architecture rtl of MemoryModule_TopLevel is
-- [BEGIN USER SIGNALS]
-- [END USER SIGNALS]
constant HiSignal : std_logic := '1';
constant LoSignal : std_logic := '0';
signal MemoryModule_TopLevel_Clock : std_logic := '0';
signal MemoryModule_TopLevel_Reset : std_logic := '0';
signal MemoryModule_TopLevel_MemoryModuleReadAddress : unsigned(8 downto 1) := (others => '0');
signal MemoryModule_TopLevel_MemoryModuleWriteAddress : unsigned(8 downto 1) := (others => '0');
signal MemoryModule_TopLevel_MemoryModuleWriteData : unsigned(16 downto 1) := (others => '0');
signal MemoryModule_TopLevel_MemoryModule_Clock : std_logic := '0';
signal MemoryModule_TopLevel_MemoryModule_Reset : std_logic := '0';
signal MemoryModule_TopLevel_MemoryModule_ReadAddress : unsigned(8 downto 1) := (others => '0');
signal MemoryModule_TopLevel_MemoryModule_WriteAddress : unsigned(8 downto 1) := (others => '0');
signal MemoryModule_TopLevel_MemoryModule_WriteData : unsigned(16 downto 1) := (others => '0');
constant MemoryModule_TopLevel_MemoryModule_Zero : std_logic := '0';
constant MemoryModule_TopLevel_MemoryModule_One : std_logic := '1';
constant MemoryModule_TopLevel_MemoryModule_true : std_logic := '1';
constant MemoryModule_TopLevel_MemoryModule_false : std_logic := '0';
signal MemoryModule_TopLevel_MemoryModule_Inputs_ReadAddress : unsigned(8 downto 1)  := "00000000";
signal MemoryModule_TopLevel_MemoryModule_Inputs_WriteAddress : unsigned(8 downto 1)  := "00000000";
signal MemoryModule_TopLevel_MemoryModule_Inputs_WriteData : unsigned(16 downto 1)  := "0000000000000000";
signal BoardSignals : BoardSignalsType;
signal InternalReset : std_logic := '0';
begin
work.Quokka.BoardSignalsProc(BoardSignals,MemoryModule_TopLevel_MemoryModule_Clock,MemoryModule_TopLevel_MemoryModule_Reset,InternalReset);
process()
begin
end process;
-- Top-level entity connections
process(Clock, MemoryModuleReadAddress, MemoryModuleWriteAddress, MemoryModuleWriteData, Reset)
begin
	MemoryModule_TopLevel_MemoryModuleReadAddress <= MemoryModuleReadAddress;
	MemoryModule_TopLevel_MemoryModuleWriteAddress <= MemoryModuleWriteAddress;
	MemoryModule_TopLevel_MemoryModuleWriteData <= MemoryModuleWriteData;
MemoryModule_TopLevel_Clock <= Clock;
MemoryModule_TopLevel_Reset <= NOT Reset;
end process;
process(MemoryModule_TopLevel_Clock, MemoryModule_TopLevel_MemoryModule_ReadAddress, MemoryModule_TopLevel_MemoryModule_WriteAddress, MemoryModule_TopLevel_MemoryModule_WriteData, MemoryModule_TopLevel_MemoryModuleReadAddress, MemoryModule_TopLevel_MemoryModuleWriteAddress, MemoryModule_TopLevel_MemoryModuleWriteData, MemoryModule_TopLevel_Reset)
begin
MemoryModule_TopLevel_MemoryModule_Clock <= MemoryModule_TopLevel_Clock;
MemoryModule_TopLevel_MemoryModule_Reset <= MemoryModule_TopLevel_Reset;
MemoryModule_TopLevel_MemoryModule_ReadAddress <= MemoryModule_TopLevel_MemoryModuleReadAddress;
MemoryModule_TopLevel_MemoryModule_WriteAddress <= MemoryModule_TopLevel_MemoryModuleWriteAddress;
MemoryModule_TopLevel_MemoryModule_WriteData <= MemoryModule_TopLevel_MemoryModuleWriteData;
MemoryModule_TopLevel_MemoryModule_Inputs_ReadAddress <= unsigned(MemoryModule_TopLevel_MemoryModule_ReadAddress);
MemoryModule_TopLevel_MemoryModule_Inputs_WriteAddress <= unsigned(MemoryModule_TopLevel_MemoryModule_WriteAddress);
MemoryModule_TopLevel_MemoryModule_Inputs_WriteData <= unsigned(MemoryModule_TopLevel_MemoryModule_WriteData);
end process;
-- [BEGIN USER ARCHITECTURE]
-- [END USER ARCHITECTURE]
end architecture;
