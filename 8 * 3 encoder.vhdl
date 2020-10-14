                                                                  TEST BENCH

library IEEE;
use IEEE.std_logic_1164.all;
entity encoder_tb is
end encoder_tb;
architecture tb of encoder_tb is
component encoder is
Port ( I : in std_logic_vector(0 to 7);
Y : out std_logic_vector(2 downto 0));
end component;
signal I : std_logic_vector(0 to 7);
signal Y : std_logic_vector(2 downto 0);
begin
uut: encoder port map(I => I, Y => Y);
stim: process
begin
I<="10000000";
wait for 20 ns;
I<="01000000";
wait for 20 ns;
I<="00100000";
wait for 20 ns;
I<="00010000";
wait for 20 ns;
I<="00001000";
wait for 20 ns;
I<="00000100";
wait for 20 ns;
I<="00000010";
wait for 20 ns;
I<="00000001";
wait for 20 ns;
I<="01000100";
wait for 20 ns;
I<="00000000";
wait for 20 ns;
wait;
end process;
end tb;

                                                                  VHDL Code
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity encoder is
Port ( I : in std_logic_vector(0 to 7);
Y : out std_logic_vector(2 downto 0));
end encoder;
architecture Behavioral of encoder is
begin
process(I)
begin
case I is
when "10000000"=>Y<="000";
when "01000000"=>Y<="001";
when "00100000"=>Y<="010";
when "00010000"=>Y<="011";
when "00001000"=>Y<="100";
when "00000100"=>Y<="101";
when "00000010"=>Y<="110";
when "00000001"=>Y<="111";
when others =>null;
end case;
end process;
end Behavioral;
