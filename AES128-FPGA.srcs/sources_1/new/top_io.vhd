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
use work.matrix_type_pkg.ALL; -- for key array type

entity top_io is
    port (
        clk: in std_logic;
        btnC: in std_logic; -- start
        btnR: in std_logic; -- reset
        -- btnD: in std_logic; -- if we want to implement decryption, let's run it using DOWN button
        btnD: in std_logic; -- button used for debug
        seg: out std_logic_vector(6 downto 0); -- 7 segments, shared among all 4 digits
        an: out std_logic_vector(3 downto 0); -- 4 anodes, 1 per digit
        --led0: out std_logic -- only for debug like enc done
        led : out std_logic_vector(15 downto 0)
    );
end top_io;

architecture Behavioral of top_io is

    type state_t is (IDLE, RUNNING, DONE_S);
    signal state: state_t := IDLE;
    --signal next_state: state_t := IDLE;
    signal start_encryption: std_logic := '0';
    signal reset_encryption: std_logic := '0';

    signal strt_ff1, strt_sync: std_logic := '0'; -- flip-flops for synchronizing
    signal strt: std_logic := '0'; -- pulse when btnC is pressed (start encryption)

    signal rst_ff1, rst_sync: std_logic := '0'; -- flip-flops for synchronizing
    signal rst: std_logic := '0'; -- pulse when btnR is pressed (reset encryption)

    --debug:
    signal dbg_ff1, dbg_sync: std_logic := '0'; -- flip-flops for synchronizing
    signal dbg: std_logic := '0'; -- pulse when btnD (debug button)

    --constant DEBOUNCE_CYCLES: integer := 1_000_000; -- tune for debouncing time
    --signal strt_prev: std_logic := '0'; -- previous value of start signal (for debouncing)
    --signal db_count_strt: unsigned(19 downto 0) := (others => '0'); -- counter for debouncing start button
    --signal rst_prev: std_logic := '0'; -- previous value of reset signal (for debouncing)
    --signal db_count_rst: unsigned(19 downto 0) := (others => '0'); -- counter for debouncing reset button

    signal progress: integer range 0 to 11 := 0; -- current round of encryption (0 is idle (or done), 1-11 are encryption rounds)
    signal show_aes: std_logic := '0'; -- signal to show "AES" on 7-segment display
    signal done: std_logic := '0'; -- is 1 when encryption is done
    signal v_o: std_logic_vector(127 downto 0); -- OUTPUT VECTOR

    -- TEST VECTOR, CHANGE HERE:
    constant test_text: std_logic_vector(127 downto 0) := x"6BC1BEE2_2E409F96_E93D7E11_7393172A"; -- INPUT VECTOR

    --put this to aes_enc
    -- Round keys array:
    constant RKS: rk_array_t(0 to 10) := (
    -- constant RKS: array(0 to 10) of std_logic_vector(127 downto 0) := (
        --key for round 1 to 11
        x"2b7e151628aed2a6abf7158809cf4f3c", -- initial key (1st round)
        x"a0fafe1788542cb123a339392a6c7605", -- round 2
        x"f2c295f27a96b9435935807a7359f67f", -- round 3
        x"3d80477d4716fe3e1e237e446d7a883b", -- round 4
        x"ef44a541a8525b7fb671253bdb0bad00", -- round 5
        x"d4d1c6f87c839d87caf2b8bc11f915bc", -- round 6
        x"6d88a37a110b3efddbf98641ca0093fd", -- round 7
        x"4e54f70e5f5fc9f384a64fb24ea6dc4f", -- round 8
        x"ead27321b58dbad2312bf5607f8d292f", -- round 9
        x"ac7766f319fadc2128d12941575c006e", -- round 10
        x"d014f9a8c9ee2589e13f0cc8b6630ca6" -- round 11 (final)
    );

    -- -- 7-segment patterns for letters AES (active-low)
    -- constant SEG_empty : std_logic_vector(6 downto 0) := "1111111"; -- all segments off
    -- constant SEG_A : std_logic_vector(6 downto 0) := "0001000"; -- A (a,b,c,e,f,g segments)
    -- constant SEG_E : std_logic_vector(6 downto 0) := "0000110"; -- E (a,d,e,f,g segments)
    -- constant SEG_S : std_logic_vector(6 downto 0) := "0010010"; -- S (a,c,d,f,g segments)
    
    -- signal selected_digit: unsigned(1 downto 0) := "00"; -- to select which digit to display
    -- constant clock_divider_display: integer := 50000; -- adjust for display refresh rate, 50000: 1kHz display refresh for 100MHz board clock
    -- signal display_div_count: unsigned(15 downto 0) := (others => '0'); -- counter for display clock division
    -- --signal display_tick: std_logic := '0'; -- tick for 7seg display multiplexing

    component display is
        port (
            clk: in std_logic;
            an: out std_logic_vector(3 downto 0);
            seg: out std_logic_vector(6 downto 0);
            show_aes: in std_logic
        );
    end component;

    component aes_enc
        port (
            clk: in std_logic;
            reset: in std_logic;
            start: in std_logic;
            rks: in rk_array_t;
            v_i: in std_logic_vector(127 downto 0);
            v_o: out std_logic_vector(127 downto 0);
            aes_done: out std_logic;
            led_progress: out integer range 0 to 11 --! 0 is idle, 1-11 are encryption step
        );
    end component;

begin

    encryption_aes_c: aes_enc
        port map (
            clk => clk, -- main clock
            reset => reset_encryption, -- reset signal from FSM
            start => start_encryption, -- start signal from FSM
            rks => RKS, -- round keys array
            v_i => test_text, -- input vector (plaintext)
            v_o => v_o, -- output vector (ciphertext)
            aes_done => done, -- done flag
            led_progress => progress -- current step (0 is idle, 1-11 are encryption steps to show on LEDs)
        );

    leds_proc: process(done, state, progress)
    begin
        -- default is all off
        led <= (others => '0');
        --------------------
        -- led(15) show board state (idle/running/done)
        -- led(13 downto 2) show aes_enc progress (rounds 0(idle) to 11)
        -- led(0) show done signal (in addition to showing AES on display)

        led(0) <= done;
        case state is
            when IDLE =>
                led(15) <= '1'; -- indicate idle state on led15
            when RUNNING =>
                led(15) <= '0'; -- indicate running state
            when DONE_S =>
                led(15) <= '1'; -- indicate done state
         end case;

         -- 11+1 rounds of progress (0to11, 0 is idle)
        led(13-progress) <= '1'; -- show rounds progress on leds 13 to 2

    end process leds_proc;

    --do button debouncing ?

    -- states: IDLE, ENCRYPTING/RUNNING, DONE_S
    main_fsm_proc: process(clk)
    begin
        if rising_edge(clk) then

            start_encryption <= '0';
            reset_encryption <= '0';

            -- BTN synchronization done in another process below

            -- temporary? no debouncing
            rst <= rst_sync;
            strt <= strt_sync;

            --DEBUG: COMMENT OUT AFTER
            dbg <= dbg_sync; -- debug signal from btnD

            -- FSM:
            --if rst = '1' then
            --    state <= IDLE;
            --else
            case state is
                when IDLE =>
                    --reset_encryption <= '0';
                    if strt = '1' then
                        state <= RUNNING;
                        start_encryption <= '1'; --must
                    -- else is not necessary
                    -- else
                    --     state <= IDLE;
                        --start_encryption <= '0'; --dh
                    end if;
                when RUNNING =>
                    --reset_encryption <= '0';
                    if done = '1' then
                        state <= DONE_S;
                        --start_encryption <= '0'; --must
                    -- else is not necessary
                    -- else
                    --     state <= RUNNING;
                        --already start_encryption <= '1';
                    end if;
                when DONE_S =>
                    if rst = '1' then
                        state <= IDLE;
                        --start_encryption <= '0'; --dh
                        reset_encryption <= '1'; --must
                    -- else is not necessary
                    -- else
                    --     state <= DONE_S;
                        --start_encryption <= '0'; --dh
                        --reset_encryption <= '0';
                    end if;
            end case;
            --end if;
        end if;
    end process main_fsm_proc;

    btn_sync_proc: process(clk)
    begin -- synchronize button presses (protects against metastability), enters clock domain
        if rising_edge(clk) then
            strt_ff1 <= btnC;
            strt_sync <= strt_ff1;

            rst_ff1 <= btnR;
            rst_sync <= rst_ff1;

            --debug:
            dbg_ff1 <= btnD;
            dbg_sync <= dbg_ff1;
        end if;
    end process btn_sync_proc;

    -- btn_debounce: process(clk)
    -- begin
    --     if rising_edge(clk) then
    --         -- TODO: debounce buttons ?
    --         if strt_sync = '1' then
    --             if db_count_strt 



    --         end if;

    --         if rst_sync = '1' then
    --             if db_count_rst 



    --         end if;
    --     end if;
    -- end process btn_debounce;


    -- btn_clock: process(clk)
    -- begin
    --     if rising_edge(clk) then
    --         -- start signal generation
    --         if btnC = '1' then
    --             strt <= '1';
    --         else
    --             strt <= '0';
    --         end if;

    --         -- reset signal generation
    --         if btnR = '1' then
    --             rst <= '1';
    --         else
    --             rst <= '0';
    --         end if;
    --     end if;
    -- end process btn_clock;

    show_aes <= done or dbg;
    display_c : display
        port map (
            clk => clk,
            an => an,
            seg => seg,
            show_aes => show_aes
        );

    -- -- the whole cycle thorugh all 4 digits must be 1-16ms ? -- TODO: adjust divider
    -- display_segment_clock: process(clk) -- display's sub_clock
    -- begin
    --     if rising_edge(clk) then
    --         if display_div_count = to_unsigned(clock_divider_display-1, display_div_count'length) then
    --             display_div_count <= (others => '0');
    --             -- tick 1
    --             -- display_tick <= '1';
    --             selected_digit <= selected_digit + 1; -- wraps abck to 0 automatically
    --         else
    --             display_div_count <= display_div_count + 1;
    --             -- tick 0
    --             -- display_tick <= '0';
    --         end if;


    --         -- if display_tick = '1' then
    --         --     -- if selected_digit = 3 then
    --         --     --     selected_digit <= 0;
    --         --     -- else
    --         --     --     selected_digit <= selected_digit + 1;
    --         --     -- end if;
    --         --     selected_digit <= selected_digit + 1; -- wraps abck to 0 automatically
    --         -- end if;
    --     end if;
    -- end process display_segment_clock;

    -- --display_segment: process(all) -- process(all) is deprecated ?
    -- -- equivalent to process(done, selected_digit)
    -- display_segment: process(done, selected_digit)
    -- begin
    --     if done = '1' then
    --         -- show "AES" on 7-segment display
    --         case selected_digit is
    --             when "00" =>
    --                 an <= "1110"; -- TODO: verify anode order
    --                 seg <= SEG_S;
    --             when "01" =>
    --                 an <= "1101";
    --                 seg <= SEG_E;
    --             when "10" =>
    --                 an <= "1011";
    --                 seg <= SEG_A;
    --             when others =>
    --                 an <= "0111";
    --                 seg <= SEG_empty;
    --         end case;
    --     else
    --         -- clear display
    --         an <= "1111"; -- turn off all anodes
    --         seg <= SEG_empty; -- turn off all segments
    --     end if;
    -- end process display_segment;

end Behavioral;
