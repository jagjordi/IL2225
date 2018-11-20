Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
library work; 
use work.types_consts.all;

entity tb_fullySerial is end tb_fullySerial;

Architecture behavior of tb_fullySerial is 
component Top_Serial_FIR 
  port(clk,rst_n,sample_clk: in std_logic;
       sample:in signed (width-1 downto 0);
       conv_sum: out signed (result_width-1 downto 0);
       dav: out std_logic);
end component;
signal clk, clk3, clk2,rst_n: std_logic:='0';
signal sample_clk:std_logic:='1';
signal sample:signed (width-1 downto 0);
signal conv_sum: signed (result_width-1 downto 0);
signal dav: std_logic;
begin
  P1: Top_Serial_FIR  port map(clk,rst_n,sample_clk,sample,conv_sum,dav);
  clk <= not clk after 10 ns;
  rst_n <= '1' after 5 ns;
  -- sample_clk <= '1' , '0' after 20 ns, '1' after 300ns, '0' after 320 ns;
  sample <= "0000000001", "0000000000" after 440 ns;
  clk2 <= not clk2 after 400 ns;
  clk3 <= transport clk2 after 20 ns;
  sample_clk <= clk2 xor clk3;
end behavior;
