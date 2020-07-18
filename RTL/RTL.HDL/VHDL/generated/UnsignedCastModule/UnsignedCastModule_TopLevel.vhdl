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
-- System configuration name is UnsignedCastModule_TopLevel, clock frequency is 1Hz, Top-level
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Quokka.all;

entity UnsignedCastModule_TopLevel is
    port
    (
-- [BEGIN USER PORTS]
-- [END USER PORTS]

UShortValue : in  unsigned(15 downto 0);
ByteValue : out  unsigned(7 downto 0);
SByteValue : out  signed(7 downto 0);
ShortValue : out  signed(15 downto 0);
IntValue : out  signed(31 downto 0);
UIntValue : out  unsigned(31 downto 0)
    );
end entity;

-- FSM summary
-- Packages
architecture rtl of UnsignedCastModule_TopLevel is
-- [BEGIN USER SIGNALS]
-- [END USER SIGNALS]
constant HiSignal : std_logic := '1';
constant LoSignal : std_logic := '0';
constant Zero : std_logic := '0';
constant One : std_logic := '1';
constant true : std_logic := '1';
constant false : std_logic := '0';
signal Inputs_UShortValue : unsigned(16 downto 1)  := "0000000000000000";
signal UnsignedCastModule_L13F34T58_Cast : unsigned(8 downto 1)  := "00000000";
signal UnsignedCastModule_L14F36T61_Cast : signed(8 downto 1)  := "00000000";
signal UnsignedCastModule_L15F36T61_Cast : signed(16 downto 1)  := "0000000000000000";
signal UnsignedCastModule_L17F34T58_Cast : unsigned(32 downto 1)  := "00000000000000000000000000000000";
begin
process(Inputs_UShortValue, UnsignedCastModule_L13F34T58_Cast, UnsignedCastModule_L14F36T61_Cast, UnsignedCastModule_L15F36T61_Cast, UnsignedCastModule_L17F34T58_Cast, UShortValue)
begin
Inputs_UShortValue <= UShortValue;
UnsignedCastModule_L13F34T58_Cast <= Inputs_UShortValue(8 downto 1);
ByteValue <= UnsignedCastModule_L13F34T58_Cast;
UnsignedCastModule_L14F36T61_Cast <= signed(Inputs_UShortValue(8 downto 1));
SByteValue <= UnsignedCastModule_L14F36T61_Cast;
UnsignedCastModule_L15F36T61_Cast <= signed(Inputs_UShortValue);
ShortValue <= UnsignedCastModule_L15F36T61_Cast;
IntValue <= signed(resize(unsigned(Inputs_UShortValue), IntValue'length));
UnsignedCastModule_L17F34T58_Cast <= unsigned(resize(unsigned(Inputs_UShortValue), UnsignedCastModule_L17F34T58_Cast'length));
UIntValue <= UnsignedCastModule_L17F34T58_Cast;
end process;
-- [BEGIN USER ARCHITECTURE]
-- [END USER ARCHITECTURE]
end architecture;