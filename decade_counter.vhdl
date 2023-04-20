take runtime 300ns

                                                                                          design
                                                                                          
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
entity decade_cntr is
port ( Clk, reset: in std_logic;
Q: out std_logic_vector(3 downto 0));
end decade_cntr;
architecture behav of decade_cntr is
signal Qt: std_logic_vector(3 downto 0):= "0000";
begin
process (reset,Clk)
begin
if reset = '0' then Qt <= "0000";
elsif (Clk'event and Clk='1') then
if Qt = "1001" then
Qt <= "0000";
else Qt <= Qt + "0001";
end if;
end if;
end process;
Q <= Qt;
end behav;



                                                                 testbench
library IEEE;
use IEEE.std_logic_1164.all;
entity decade_cntr_tb is
end decade_cntr_tb;
architecture tb of decade_cntr_tb is
component decade_cntr is
port ( Clk, reset: in std_logic;
Q: out std_logic_vector(3 downto 0));
end component;
signal Clk, reset: std_logic;
signal Q: std_logic_vector(3 downto 0);
begin
uut: decade_cntr port map(Clk => Clk, reset => reset, Q => Q);
clk_process: process
begin
Clk <= '0';
wait for 5ns;
Clk <= '1';
wait for 5ns;
end process;
input_process: process
begin
reset <= '1';
wait for 200 ns;
reset <= '0';
wait for 10 ns;
wait;
end process;
end tb;
