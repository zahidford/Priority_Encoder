library IEEE;
use IEEE.std_logic_1164.all;

entity Priority_Encoder is

Port (
 Encoder_bits : out std_logic_vector(2 downto 0);
 Input_Ports : in std_logic_vector(7 downto 0)
      );
end Priority_Encoder;

architecture behave of Priority_Encoder is


begin

	encode_process: process(Input_Ports)
		begin
		if (Input_Ports(7) ='1') then
			Encoder_bits <= "111";
		elsif (Input_Ports(6) ='1') then
			Encoder_bits <= "110";
		elsif (Input_Ports(5) ='1') then
			Encoder_bits <= "101";
		elsif (Input_Ports(4) ='1') then
			Encoder_bits <= "100";
		elsif (Input_Ports(3) ='1') then
			Encoder_bits <= "011";
		elsif (Input_Ports(2) ='1') then
			Encoder_bits <= "010";
		elsif (Input_Ports(1) ='1') then
			Encoder_bits <= "001";
		elsif (Input_Ports(0) ='1') then
			Encoder_bits <= "000";
		else
			Encoder_bits <=(others => 'X');
		end if;
	end process encode_process;

end behave;