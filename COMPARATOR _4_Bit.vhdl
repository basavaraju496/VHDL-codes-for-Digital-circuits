                                                          DESIGN     
                  
library ieee;
use ieee.std_logic_1164.all;
entity comparator is
port (A,B:in std_logic_vector(3 downto 0);
AEQB, AGTB, ALTB:out std_logic);
end comparator;
architecture behavior of comparator is
begin
AEQB<='1' when A=B else'0';
AGTB<='1' when A>B else'0';
ALTB<='1' when A<B else'0';
end behavior;
                                                              TEST BENCH 

library IEEE;
use IEEE.std_logic_1164.all;
entity comparator_tb is
end comparator_tb;
architecture tb of comparator_tb is
component comparator is
Port(A,B : in std_logic_vector(3 downto 0);
AGTB,AEQB,ALTB:out std_logic);
end component;
signal A,B : std_logic_vector(3 downto 0);
signal AGTB,AEQB,ALTB: std_logic;
begin
uut: comparator port map(A => A, B => B, AGTB => AGTB, AEQB => AEQB, ALTB => ALTB);
stim: process
begin
A<="1011";
B<="1000";
wait for 20 ns;
A<="1000";
B<="1010";
wait for 20 ns;
A<="1011";
B<="1011";
wait for 20 ns;
A<="1010";
B<="1001";
wait for 20 ns;
A<="1010";
B<="1011";
wait for 20 ns;
wait;
end process;
end tb;
