                       Take the run time as 100 nano seconds
                                                                 TEST BENCH
library IEEE;
use IEEE.std_logic_1164.all;
entity dff_tb is
end dff_tb;
architecture tb of dff_tb is
component dff is
Port ( Clk,Clr : in std_logic;
D : in std_logic;
Q : out std_logic;
Qbar: out std_logic);
end component;
signal Clk, Clr, D: std_logic;
signal Q, Qbar : std_logic;
begin
uut: dff port map(Clk => Clk, Clr => Clr, D => D, Q => Q, Qbar => Qbar);
clk_process: process
begin
Clk <= '0';
wait for 5ns;
Clk <= '1';
wait for 5ns;
end process;
input_process: process
begin
Clr <= '1';
D <= '1';
wait for 10 ns;
D <= '0';
wait for 10 ns;
D <= '1';
wait for 10 ns;
Clr <= '0';
D <= '1';
wait for 10 ns;
wait;
end process;
end tb;

                                                              VHDL  DESIGN
library IEEE;
use IEEE.std_logic_1164.all;
entity dff is
Port ( Clk,Clr : in std_logic;
D : in std_logic;
Q : out std_logic;
Qbar: out std_logic);
end dff;
architecture Behavioral of dff is
begin
process (Clk,Clr)
begin
if Clr='0' then Q<='0'; Qbar<='1';
elsif (Clk'event and Clk = '1')
then Q<= D; Qbar<= not D;
end if;
end process;
end Behavioral;
