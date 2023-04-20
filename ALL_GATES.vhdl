                                                     TESTBENCH OF ALL GATES
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity gates_tb is
end entity;

architecture tb of gates_tb is
component ALLGATES is
Port ( A,B : in STD_LOGIC;
P, Q, R, S, T, U, V : out STD_LOGIC);
end component;

signal A, B, P, Q, R, S, T, U, V : STD_LOGIC;
begin
uut: ALLGATES port map(A => A, B => B, P => P,Q => Q, R => R, S => S, T => T,    U => U, V => V);
stim: process
begin

A <= '0';
B <= '0';
wait for 20 ns;

A <= '0';
B <= '1';
wait for 20 ns;

A <= '1';
B <= '0';
wait for 20 ns;

A <= '1';
B <= '1';
wait for 20 ns;
wait;

end process;
end tb;
                                                                  DESIGN OF ALL GATES
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALLGATES is
Port ( A,B : in  STD_LOGIC;
P, Q, R, S, T, U, V : out  STD_LOGIC);
end ALLGATES;

architecture dataflow of ALLGATES is
begin
P <= A and B;
Q <= A or B;
R <= not A;
S <= A nand B;
T <= A nor B;
U <= A xor B;
V <= A xnor B;
end dataflow;

