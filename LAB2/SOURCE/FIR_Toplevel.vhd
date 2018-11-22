library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

library work;
use work.misc.all;

entity FIR_Toplevel is
  generic(width       : integer := 4;
          filter_taps : integer := 5);
  port (rst_n      : in std_logic;
        clk        : in std_logic;
        sample_clk : in std_logic;
        sample     : in std_logic_vector(width-1 downto 0);

        dav  : out std_logic;
        outp : out std_logic_vector(width-1 downto 0)
        );
end FIR_Toplevel;

architecture FIR_Toplevel_behavioural of FIR_Toplevel is
  
  component FIR_Processor
  generic(filter_taps : integer := 5;
          width       : integer := 4);  
    port (rst_n      : in std_logic;
          clk        : in std_logic;
          sample_clk : in std_logic;

         -- sample          : in std_logic_vector(width-1 downto 0);
          sample_delay_in : in std_logic_vector(width-1 downto 0);
          coeficient      : in std_logic_vector(width-1 downto 0);

          coef_addr : out std_logic_vector(log2_ceil(filter_taps) downto 0);
          dav       : out std_logic;
          outp      : out std_logic_vector(width-1 downto 0)
          );
  end component;

  component ROM_Process
    generic( filter_taps: integer :=5;
           width      : integer :=4); 
    port (address        : in  std_logic_vector(log2_ceil(filter_taps) downto 0);
          coeficient_out : out std_logic_vector(width-1 downto 0)
          );
  end component;

  component Delayline_CB
  generic(filter_taps : integer := 5;
          width       : integer := 4);
    port (rst_n      : in  std_logic;
          clk        : in  std_logic;
          sample_clk : in  std_logic;
          sample     : in  std_logic_vector(width-1 downto 0);
          sample_out : out std_logic_vector(width-1 downto 0)
          );
  end component;

  signal coeficient_out_wire : std_logic_vector(width-1 downto 0);
  signal sample_out_wire     : std_logic_vector(width-1 downto 0);
  signal outp_wire           : std_logic_vector(width-1 downto 0);
  signal coef_addr_wire      : std_logic_vector(log2_ceil(filter_taps) downto 0);
  signal dav_wire            : std_logic;

begin

  dav  <= dav_wire;
  outp <= outp_wire;

  U_delayline : DelayLine_CB  generic map (filter_taps, width) port map (rst_n, clk, sample_clk, sample, sample_out_wire);
  u_FIRP      : FIR_processor generic map (filter_taps, width) port map (rst_n, clk, sample_clk, sample_out_wire, coeficient_out_wire, coef_addr_wire, dav_wire, outp_wire);
  u_ROM       : ROM_process   generic map (filter_taps, width) port map (coef_addr_wire, coeficient_out_wire);
  
  
end architecture FIR_Toplevel_behavioural;
