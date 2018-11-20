Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
library work; 
use work.types_consts.all;

ENTITY Arith_Unit is 
PORT (clk : std_logic;
      rst_n : std_logic;
      rst_mac_n: std_logic;
      sample1, sample2: in signed(width-1 downto 0);   
      coeff: in signed(width-1 downto 0);
      result: out signed (result_width-1 downto 0);
      ctrl_sig : in std_logic);
END Arith_Unit;

ARCHITECTURE behavior OF Arith_Unit IS 
component MAC 
PORT (sample_in: in signed (width-1 downto 0);
      coeff: in signed (width-1 downto 0);
      acc: in signed (result_width-1 downto 0);
      result: out signed (result_width-1 downto 0));
END component;
signal tmp_result1, tmp_result2, MAC_result1, MAC_result2: signed (result_width-1 downto 0);
signal sample2_mux : signed (width-1 downto 0);
begin

MAC1: MAC port map  (sample1, coeff, tmp_result1, MAC_result1);
MAC2: MAC port map  (sample2_mux, coeff, tmp_result2, MAC_result2);
sample2_mux <= sample2 when ctrl_sig = '0' else (others=>'0');
process (clk, rst_n,rst_mac_n)
   begin
     if rst_mac_n='0' or rst_n='0' then 
       tmp_result1 <= (others => '0');
       tmp_result2 <= (others => '0');
     elsif rising_edge (clk) then 
         tmp_result1 <= MAC_result1;
         tmp_result2 <= MAC_result2;
     end if;
 end process;

 result <= tmp_result1 + tmp_result2;
end behavior;
