                                                                         DECODER TESTBENCH
library IEEE;
use IEEE.std_logic_1164.all;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity decoder is
Port ( G1,G2,G3 : in std_logic;
A : in std_logic_vector(2 downto 0);
Y : out std_logic_vector(0 TO 7));
end decoder;
architecture Behavioral of decoder is
signal Y1:std_logic_vector(0 to 7 );
begin
with A select Y1<= "01111111" when "000",
"10111111" when "001",
"11011111" when "010",
"11101111" when "011",
"11110111" when "100",
"11111011" when "101",
"11111101" when "110",
"11111110" when "111",
"11111111" when others;
Y<= Y1 when (G1 and not G2 and not G3)='1'
else "11111111";
end Behavioral;
                                                         TESTBENCH OF DECODER
                                                         library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity decoder_tb is
end entity;
architecture tb of decoder_tb is
component decoder is
Port ( G1,G2,G3 : in std_logic;
A : in std_logic_vector(2 downto 0);
Y : out std_logic_vector(0 TO 7));
end component;
signal G1, G2, G3: STD_LOGIC;
signal A : STD_LOGIC_VECTOR (2 downto 0);
signal Y : STD_LOGIC_VECTOR (0 to 7);
begin
uut: decoder port map(G1 => G1, G2 => G2, G3 => G3, A => A, Y => Y);
stim: process
begin
G1 <= '0';
G2 <= '0';
G3 <= '0';
A <= "000";
wait for 20 ns;
G1 <= '1';
G2 <= '0';
G3 <= '0';
A <= "000";
wait for 20 ns;
G1 <= '1';
G2 <= '0';
G3 <= '0';
A <= "001";
wait for 20 ns;
G1 <= '1';
G2 <= '0';
G3 <= '0';
A <= "010";
wait for 20 ns;
G1 <= '1';
G2 <= '0';
G3 <= '0';
A <= "011";
wait for 20 ns;
G1 <= '1';
G2 <= '0';
G3 <= '0';
A <= "100";
wait for 20 ns;
G1 <= '1';
G2 <= '0';
G3 <= '0';
A <= "101";
wait for 20 ns;
G1 <= '1';
G2 <= '0';
G3 <= '0';
A <= "110";
wait for 20 ns;
G1 <= '1';
G2 <= '0';
G3 <= '0';
A <= "111";
wait for 20 ns;
wait;
end process;
end tb;
