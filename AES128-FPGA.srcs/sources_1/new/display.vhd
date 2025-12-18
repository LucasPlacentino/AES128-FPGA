----------------------------------------------------------------------------------
-- Authors: Lucas Placentino and Mehrdad Gholamnejad
-- 
-- Create Date: 2025
-- Module Name: display - Behavioral
-- Project Name: AES Encryption Implementation on an FPGA
-- Target Devices: Digilent Basys 3
-- Description: 
-- 
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; -- for unsigned types

entity display is
    port (
        clk: in std_logic;
        an: out std_logic_vector(3 downto 0);
        seg: out std_logic_vector(6 downto 0);
        show_aes: in std_logic
    );
end display;

architecture Behavioral of display is

    -- 7-segment patterns for letters AES (active-low)
    constant SEG_empty : std_logic_vector(6 downto 0) := "1111111"; -- all segments off
    constant SEG_A : std_logic_vector(6 downto 0) := "0001000"; -- A (a,b,c,e,f,g segments)
    constant SEG_E : std_logic_vector(6 downto 0) := "0000110"; -- E (a,d,e,f,g segments)
    constant SEG_S : std_logic_vector(6 downto 0) := "0010010"; -- S (a,c,d,f,g segments)
    
    signal selected_digit: unsigned(1 downto 0) := "00"; -- to select which digit to display
    constant clock_divider_display: integer := 50000; -- adjust for display refresh rate, 50000: 1kHz display refresh for 100MHz board clock
    signal display_div_count: unsigned(15 downto 0) := (others => '0'); -- counter for display clock division
    --signal display_tick: std_logic := '0'; -- tick for 7seg display multiplexing

begin
    

    display_segment_clock: process(clk) -- display's sub_clock
    begin
        if rising_edge(clk) then
            if display_div_count = to_unsigned(clock_divider_display-1, display_div_count'length) then
                display_div_count <= (others => '0');
                -- tick 1
                -- display_tick <= '1';
                selected_digit <= selected_digit + 1; -- wraps abck to 0 automatically
            else
                display_div_count <= display_div_count + 1;
                -- tick 0
                -- display_tick <= '0';
            end if;


            -- if display_tick = '1' then
            --     -- if selected_digit = 3 then
            --     --     selected_digit <= 0;
            --     -- else
            --     --     selected_digit <= selected_digit + 1;
            --     -- end if;
            --     selected_digit <= selected_digit + 1; -- wraps abck to 0 automatically
            -- end if;
        end if;
    end process display_segment_clock;

    --display_segment: process(all) -- process(all) is deprecated ?
    -- equivalent to process(done, selected_digit)
    display_segment: process(show_aes, selected_digit)
    begin
        if show_aes = '1' then
            -- show "AES" on 7-segment display
            case selected_digit is
                when "00" =>
                    an <= "1110"; -- TODO: verify anode order
                    seg <= SEG_S;
                when "01" =>
                    an <= "1101";
                    seg <= SEG_E;
                when "10" =>
                    an <= "1011";
                    seg <= SEG_A;
                when others =>
                    an <= "0111";
                    seg <= SEG_empty;
            end case;
        else
            -- clear display
            an <= "1111"; -- turn off all anodes
            seg <= SEG_empty; -- turn off all segments
        end if;
    end process display_segment;

end Behavioral;
