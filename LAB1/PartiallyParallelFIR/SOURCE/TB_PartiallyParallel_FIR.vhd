Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
library work; 
use work.types_consts.all;

entity TB_PartiallyParallel_FIR is end TB_PartiallyParallel_FIR;

Architecture behavior of TB_PartiallyParallel_FIR is 
component Top_PartiallyParallel_FIR 
  port(clk,rst_n,sample_clk: in std_logic;
       sample:in signed (width-1 downto 0);
       conv_sum: out signed (result_width-1 downto 0);
       dav: out std_logic);
end component;
signal clk,dclk1, dclk2, rst_n: std_logic:='0';
signal sample_clk:std_logic:='1';
signal sample:signed (width-1 downto 0);
signal conv_sum: signed (result_width-1 downto 0);
signal dav: std_logic;
begin
  P1: Top_PartiallyParallel_FIR  port map(clk,rst_n,sample_clk,sample,conv_sum,dav);
  clk <= not clk after 10 ns;
  rst_n <= '1' after 5 ns;
  --sample_clk <= '1' , '0' after 20 ns, '1' after 300ns, '0' after 320 ns, '1' after 600ns, '0' after 620 ns, '1' after 900ns, '0' after 920 ns, '1' after 1200ns, '0' after 1220 ns;
  sample_clk <= dclk2 xor dclk1;
  dclk1 <= not dclk1 after 300 ns;
  dclk2 <=  transport dclk1 after 20 ns;
  sample <= "0000000001", "0000000000" after 400 ns;
end behavior;
