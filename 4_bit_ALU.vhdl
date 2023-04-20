                                                               design
library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
Entity ALU is
Port (S: in std_logic_vector (2 downto 0);
A, B: in std_logic_vector (3 downto 0);
F:out std_logic_vector (3 downto 0);
Cin: in std_logic);
end ALU;
Architecture behavior of ALU is
begin
process(S,A,B)
begin
case S is
when"000" => F<=A+B;
when "001" => F<=A-B;
when "010" => F<=B-A;
when "011" => F<=A+B+Cin;
when "100" => F<=A xor B;
when "101" => F<= a or b;
when "110" => F<= A and B;
when others => F<="1111";
end case;
end process;
end behavior;


                                                               testbench

library IEEE;
use IEEE.std_logic_1164.all;
entity ALU_tb is
end ALU_tb;
architecture tb of ALU_tb is
component ALU is
Port (S: in std_logic_vector (2 downto 0);
A, B: in std_logic_vector (3 downto 0);
F:out std_logic_vector (3 downto 0);
Cin: in std_logic);
end component;
signal S: std_logic_vector (2 downto 0);
signal A, B, F: std_logic_vector (3 downto 0);
signal Cin: std_logic;
begin
uut: ALU port map(S => S, A => A, B => B, F => F, Cin => Cin );
stim: process
begin
A<="1000";
B<="0010";
Cin<='1';
S<="000";
wait for 20 ns;
S<="001";
wait for 20 ns;
S<="010";
wait for 20 ns;
S<="011";
wait for 20 ns;
S<="100";
wait for 20 ns;
S<="101";
wait for 20 ns;
S<="110";
wait for 20 ns;
S<="111";
wait for 20 ns;
wait;
end process;
end tb;
