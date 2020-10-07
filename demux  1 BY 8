                                                                 DESIGN

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity demux is
Port(D :in std_logic;
S :in std_logic_vector(2 downto 0);
Y:out std_logic_vector(7 downto 0));
end demux;
architecture behavioral of demux is
begin
Y(0)<=D when S="000" else '0';
Y(1)<=D when S="001" else '0';
Y(2)<=D when S="010" else '0';
Y(3)<=D when S="011" else '0';
Y(4)<=D when S="100" else '0';
Y(5)<=D when S="101" else '0';
Y(6)<=D when S="110" else '0';
Y(7)<=D when S="111" else '0';
end behavioral;
                                                                         
                                                              TEST BENCH    
library IEEE;
use IEEE.std_logic_1164.all;
entity demux_tb is
end demux_tb;
architecture tb of demux_tb is
component demux is
Port(D :in std_logic;
S :in std_logic_vector(2 downto 0);
Y:out std_logic_vector(7 downto 0));
end component;
signal D : std_logic;
signal S : std_logic_vector(2 downto 0);
signal Y : std_logic_vector(7 downto 0);
begin
uut: demux port map(D => D, S => S, Y => Y);
stim: process
begin
D<='1';
S<="000";
wait for 20 ns;
D<='1';
S<="001";
wait for 20 ns;
D<='0';
S<="010";
wait for 20 ns;
D<='1';
S<="011";
wait for 20 ns;
D<='0';
S<="100";
wait for 20 ns;
D<='0';
S<="101";
wait for 20 ns;
D<='1';
S<="110";
wait for 20 ns;
D<='0';
S<="111";
wait for 20 ns;
wait;
end process;
end tb;
