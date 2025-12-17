----------------------------------------------------------------------------------
-- Authors: Lucas Placentino and Mehrdad Gholamnejad
-- 
-- Create Date: 2025
-- Module Name: top_io - Behavioral
-- Project Name: AES Encryption Implementation on an FPGA
-- Target Devices: Digilent Basys 3
-- Description: 
-- 
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

-- wrapper for the Basys3 board
-- center and right button
-- 4-digit 7-segment display

-- start encryption on center button press
-- when encryption is done, show "AES" on 7-segment display
-- when right button pressed, restart/reset

-- => FSM ?
-- aes_enc module instance


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; -- for unsigned types

entity top_io is
    port (
        clk: in std_logic;
        btnC: in std_logic; -- start
        btnR: in std_logic; -- reset
        seg: out std_logic_vector(6 downto 0); -- 7 segments, shared among all 4 digits
        an: out std_logic_vector(3 downto 0); -- 4 anodes, 1 per digit
        led(0): out std_logic -- only for debug like enc done
    );
end top_io;

architecture Behavioral of top_io is

    signal strt_ff1: std_logic := '0'; -- first flip-flop for debouncing
    signal strt_ff2: std_logic := '0'; -- second flip-flop for debouncing
    signal strt: std_logic; -- pulse when btnC is pressed (start encryption)
    signal rst_ff1: std_logic := '0'; -- first flip-flop for debouncing
    signal rst_ff2: std_logic := '0'; -- second flip-flop for debouncing
    signal rst: std_logic; -- pulse when btnR is pressed (reset encryption)
    signal done: std_logic := '0'; -- is 1 when encryption is done
    signal v_o: std_logic_vector(127 downto 0); -- output vector

    -- TEST VECTOR, CHANGE HERE:
    constant test_vector: std_logic_vector(127 downto 0) := x"00112233445566778899aabbccddeeff"; -- INPUT VECTOR

    -- 7-segment patterns for letters AES (active-low)
    constant SEG_empty : std_logic_vector(6 downto 0) := "1111111"; -- all segments off
    constant SEG_A : std_logic_vector(6 downto 0) := "0001000"; -- A (a,b,c,e,f,g segments)
    constant SEG_E : std_logic_vector(6 downto 0) := "0110000"; -- E (a,d,e,f,g segments)
    constant SEG_S : std_logic_vector(6 downto 0) := "0100100"; -- S (a,c,d,f,g segments)
    
    signal selected_digit: unsigned(1 downto 0) := "00"; -- to select which digit to display
    constant clock_divider_display: integer := 50000; -- adjust for display refresh rate
    signal display_div_count: unsigned(15 downto 0) := (others => '0'); -- counter for display clock division
    signal display_tick: std_logic := '0'; -- tick for display multiplexing

    component aes_enc
        port (
            clk: in std_logic;
            rst: in std_logic;
            start: in std_logic;
            v_i: in std_logic_vector(127 downto 0);
            v_o: out std_logic_vector(127 downto 0);
            done: out std_logic
        );
    end component;

begin

    --do button debouncing ?

    --FSM ?

    encryption_aes: aes_enc
        port map (
            clock => clk, -- main clock
            reset => rst, -- reset signal from btnR
            start => strt, -- start signal from btnC
            v_i => test_vector, -- input vector
            v_o => v_o, -- output vector
            done => done -- done flag
        );

    led(0) <= done; -- light up led0 according to done flag/signal

    btn_sync: process(clk)
    begin -- synchronize button presses (protects against metastability), enters clock domain
        if rising_edge(clk) then
            strt_ff1 <= btnC;
            strt_ff2 <= strt_ff1;

            rst_ff1 <= btnR;
            rst_ff2 <= rst_ff1;
        end if;
    end process btn_sync;

    rst <= rst_ff2; -- TODO: sure sufficient ?

    btn_clock: process(clk)
    begin
        if rising_edge(clk) then
            -- start signal generation
            if btnC = '1' then
                strt <= '1';
            else
                strt <= '0';
            end if;

            -- reset signal generation
            if btnR = '1' then
                rst <= '1';
            else
                rst <= '0';
            end if;
        end if;
    end process btn_clock;


    -- the whole cycle thorugh all 4 digits must be 1-16ms ? -- TODO: adjust divider
    display_segment_clock: process(clk) -- display's sub_clock
    begin
        if rising_edge(clk) then
            if display_div_count = to_unsigned(clock_divider_display-1, display_div_count'length) then
                display_div_count <= (others => '0');
                -- tick 1
                display_tick <= '1';
            else
                display_div_count <= display_div_count + 1;
                -- tick 0
                display_tick <= '0';
            end if;


            if display_tick = '1' then
                -- if selected_digit = 3 then
                --     selected_digit <= 0;
                -- else
                --     selected_digit <= selected_digit + 1;
                -- end if;
                selected_digit <= selected_digit + 1; -- wraps abck to 0 automatically
            end if;
        end if;
    end process display_segment_clock;

    display_segment: process(all)
    begin
        if done = '1' then
            -- show "AES" on 7-segment display
            case selected_digit is
                when "00" =>
                    an <= "1110"; -- TODO: verify anode order
                    seg <= SEG_A;
                when "01" =>
                    an <= "1101";
                    seg <= SEG_E;
                when "10" =>
                    an <= "1011";
                    seg <= SEG_S;
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
