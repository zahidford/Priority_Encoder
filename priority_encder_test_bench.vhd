library IEEE;
use IEEE.std_logic_1164.all;

entity Test_Priority_Encoder is
end Test_Priority_Encoder;

architecture test of Test_Priority_Encoder is

component Priority_Encoder

Port (
 Encoder_bits : out std_logic_vector(2 downto 0);
 Input_Ports : in std_logic_vector(7 downto 0)
      );
end component;

signal Test_Encoder_bits : std_logic_vector(2 downto 0);
signal Test_Input_Ports : std_logic_vector(7 downto 0);
begin

	uut: Priority_Encoder port map (Test_Encoder_bits,Test_Input_Ports);

	tst_p: process
   begin
       Test_Input_Ports<="00000001";
       wait for 100 ns;
       Test_Input_Ports<="00000010";
       wait for 100 ns;
       Test_Input_Ports<="00000100";
       wait for 100 ns;
       Test_Input_Ports<="00001000";
       wait for 100 ns;
       Test_Input_Ports<="00010000";
       wait for 100 ns;
       Test_Input_Ports<="00100000";
       wait for 100 ns;
       Test_Input_Ports<="01000000";
       wait for 100 ns;
       Test_Input_Ports<="10000000";
       wait for 100 ns;
    end process;


end test;
