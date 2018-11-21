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
        ctrl_sig : out std_logic);
end FSM;

architecture behavioral of FSM is
    type state_type is (IDLE,CALC,READY);
    signal present_state :state_type;
    signal count :std_logic_vector(addr_width-1 downto 0);
    signal rst_counter_n:std_logic:='0';
    signal wrAdr :std_logic_vector(addr_width-1 downto 0);
    signal delayLineWrEnTemp :std_logic;
    signal adrR1:std_logic_vector(addr_width-1 downto 0);
    signal adrR2:std_logic_vector(addr_width-1 downto 0);-- to be added for partially parallel FIR filter
    signal counter_step:std_logic_vector (addr_width-1 downto 0):="0001";
begin
  
    delay_line_process:process(rst_n,clk)
    begin
        if rst_n = '0' then
        elsif rising_edge (clk) then
            if sample_clk = '1' then
            end if;
        end if;
    end process delay_line_process;

    fsm_process:process(clk, rst_n)
    begin
        if rst_n = '0' then
            present_state <= IDLE;
            adrR1 <= (others => '0');
            adrR2 <= (others => '0');      
            wrAdr <= (others => '0');
            count <= (others => '0');
        elsif rising_edge(clk) then
            case present_state is
                when IDLE =>
                    rst_counter_n <= '0';
                    coeffAdr <= (others=>'0');
                    dav <= '0';
                    delayLineWrEnTemp <= '0';
                    if sample_clk = '1' then
                        rst_counter_n <= '1';
                        delayLineWrEnTemp <= '1';

                        if wrAdr = max_tap then
                            wrAdr <= (others => '0');
                        else
                            wrAdr <= wrAdr + '1' ;
                        end if;

                        adrR1 <= wrAdr;
                        if wrAdr = max_tap then
                            adrR2 <= "0000";
                        else
                            adrR2 <= wrAdr + '1';
                        end if;
                        present_state <= CALC;
                    end if;
                when CALC =>
                    delayLineWrEnTemp <= '0';

                    count <= count + '1';
                    if count = "0111" then
                        present_state <= READY;
                    end if;

                    if count = "0000" then 
                        coeffAdr <= (others=>'0');
                    else
                        coeffAdr <= count - '1';
                    end if;
                    if adrR1 = "0000" then
                        adrR1 <= max_tap;
                    else
                        adrR1 <= adrR1 - '1';
                    end if;

                    if adrR2 = max_tap then
                        adrR2 <= (others => '0');
                    else 
                        adrR2 <= adrR2 + '1';
                    end if;
                    
                    if adrR1 = adrR2 then 
                        ctrl_sig <= '1'; 
                    else 
                        ctrl_sig <= '0'; 
                    end if;
                when READY =>
                    present_state <= IDLE;
                    count <= (others => '0');
                    dav <= '1';
            end case;
        end if;
    end process;
    
    rst_mac_n <= rst_counter_n;
    delayLineAdr <= wrAdr;
    delayLineWrEn <= delayLineWrEnTemp; 
    delayLineR1 <= adrR1;
    delayLineR2 <= adrR2;-- to be added for partially parallel FIR filter
end behavioral;
