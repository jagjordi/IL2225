Library IEEE;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.ALL;
library work; 
use work.types_consts.all;


entity FSM is
    port(
        rst_n            :in  std_logic;
        clk              :in  std_logic;
        sample_clk       :in  std_logic;
        delayLineWrEn    :out std_logic;
        delayLineAdr     :out std_logic_vector(addr_width-1 downto 0);
        delayLineR1      :out std_logic_vector(addr_width-1 downto 0);
        delayLineR2      :out std_logic_vector(addr_width-1 downto 0);-- to be added for partially parallel FIR filter
        dav              :out std_logic;
        rst_mac_n        :out std_logic;
        coeffAdr         :out std_logic_vector(addr_width-1 downto 0);
        ctrl_sig         :out std_logic);
end FSM;

architecture behavioral of FSM is
    type state_type is (IDLE,READ,CALC,READY);
    signal state : state_type;
    signal count, delayLineR1Sig, delayLineR2Sig, delayLineAdrSig, coeffAdrSig :std_logic_vector(addr_width-1 downto 0);
    signal wrEnSig, rstSig : std_logic;
begin
    fsm_process:process(clk, rst_n)
    begin
        if rst_n = '0' then
            state <= IDLE;
            delayLineR1Sig <= (others => '0');
            delayLineR2Sig <= (others => '0');      
            delayLineAdrSig <= (others => '0');
            count <= (others => '0');
        elsif rising_edge(clk) then
            case state is
                when IDLE =>
                    rstSig <= '0';
                    coeffAdrSig <= (others=>'0');
                    dav <= '0';
                    wrEnSig <= '0';
                    if sample_clk = '1' then
                        wrEnSig <= '1';
                        state <= READ;
                    end if;
                when READ =>
                    wrEnSig <= '0';
                    rstSig <= '1';
                    state <= CALC;
                    coeffAdrSig <= (others=>'0');
                    
                    delayLineR1Sig <= delayLineAdrSig;
                    if delayLineAdrSig = "0000" then
                        delayLineR2Sig <= max_tap;
                    else
                        delayLineR2Sig <= delayLineAdrSig - '1';
                    end if;
                    
                    if delayLineAdrSig = "0000" then
                        delayLineAdrSig <= max_tap;
                    else
                        delayLineAdrSig <= delayLineAdrSig - '1';
                    end if;
                when CALC =>
                    wrEnSig <= '0';

                    if delayLineR1Sig = max_tap then
                        delayLineR1Sig <= (others=>'0');
                    else
                        delayLineR1Sig <= delayLineR1Sig + '1';
                    end if;
                    if delayLineR2Sig = "0000" then
                        delayLineR2Sig <= max_tap;
                    else 
                        delayLineR2Sig <= delayLineR2Sig - '1';
                    end if;
                    
                    coeffAdrSig <= coeffAdrSig + '1';
                    if coeffAdrSig = "0101" then
                        state <= READY;
                    end if;
                when READY =>
                    state <= IDLE;
                    count <= (others => '0');
                    dav <= '1';
            end case;
        end if;
    end process;
    process(clk)
    begin
        if falling_edge(clk) then
            delayLineWrEn <= wrEnSig;
            delayLineR2 <= delayLineR2Sig;
            delayLineR1 <= delayLineR1Sig;
            delayLineAdr <= delayLineAdrSig;
            rst_mac_n <= rstSig;
            coeffAdr <= coeffAdrSig;
            if delayLineR1Sig = delayLineR2Sig then
                ctrl_sig <= '1';
            else 
                ctrl_sig <= '0';
            end if;
        end if;
    end process;
end behavioral;
