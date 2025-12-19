----------------------------------------------------------------------------------
-- Authors: Lucas Placentino and Mehrdad Gholamnejad
-- 
-- Create Date: 2025
-- Module Name: aes_enc - Behavioral
-- Project Name: AES Encryption Implementation on an FPGA
-- Target Devices: Digilent Basys 3
-- Description: 
-- 
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.matrix_type_pkg.ALL;

--where do we import the keys ? here! because we use a different key for each round and we know the round here

entity aes_enc is
    port (
        clk: in std_logic;
        reset: in std_logic;
        start: in std_logic;
        rks: in rk_array_t; -- round keys array
        v_i: in std_logic_vector(127 downto 0); -- input plain text
        v_o: out std_logic_vector(127 downto 0) := (others => '0'); -- output cipher text (encrypted)
        aes_done: out std_logic;
        led_progress: out integer range 0 to 11 --! 0 is idle
        --ready: out std_logic,
        --busy: out std_logic
    ); -- TODO: do we need a ready flag ? (output) or busy flag
end aes_enc;

architecture Behavioral of aes_enc is

    -- --- Components of the 4 steps: ---
    -- add_round_key:
    component add_round_key is
        port (
            matrix_in: in byte_matrix_t;
            key: in byte_matrix_t; --! change key every round
            matrix_out: out byte_matrix_t
        );
    end component;
    -- sub_bytes:
    component sub_bytes is
        port (
            matrix_in: in byte_matrix_t;
            matrix_out: out byte_matrix_t 
        );
    end component;
    -- shift_rows:
    component shift_rows is
        port (
            matrix_in: in byte_matrix_t;
            matrix_out: out byte_matrix_t
        );
    end component;
    -- mix_columns:
    component mix_columns is
        port (
            matrix_in: in byte_matrix_t;
            matrix_out: out byte_matrix_t
        );
    end component;
    -- -----------------------------------

    -- -- Signals --
    type encryption_state_t is (IDLE, PRE, PROCESSING, POST, DONE);
    signal enc_state: encryption_state_t := IDLE; -- default state is IDLE
    type step_state_t is (SUB_BYTES_S, SHIFT_ROWS_S, MIX_COLUMNS_S, ADD_ROUND_KEY_S);
    signal step_state: step_state_t := SUB_BYTES_S; -- default state is SUB_BYTES_S (it's the first step)

    signal ark_k: byte_matrix_t; -- AddRoundKey key
    signal ark_i: byte_matrix_t; -- AddRoundKey input, will also be the very first input
    signal ark_o: byte_matrix_t; -- AddRoundKey output, will also be the final output
    signal sb_i: byte_matrix_t; -- SubBytes input
    signal sb_o: byte_matrix_t; -- SubBytes output
    signal sr_i: byte_matrix_t; -- ShiftRows input
    signal sr_o: byte_matrix_t; -- ShiftRows output
    signal mc_i: byte_matrix_t; -- MixColumns input
    signal mc_o: byte_matrix_t; -- MixColumns output

    constant ZERO_MATRIX : byte_matrix_t := (others => (others => x"00"));


begin

    sub_bytes_c : sub_bytes
        port map (
            matrix_in => sb_i,
            matrix_out => sb_o
        );
    shift_rows_c : shift_rows
        port map (
            matrix_in => sr_i,
            matrix_out => sr_o
        );
    mix_columns_c : mix_columns
        port map (
            matrix_in => mc_i,
            matrix_out => mc_o
        );
    add_round_key_c : add_round_key
        port map (
            matrix_in => ark_i,
            key => ark_k,
            matrix_out => ark_o
        );

    -- Encryption steps are:
    -- input plain text into:
    -- AddRoundKey (initial)
    -- 9 Rounds of:
    --    SubBytes
    --    ShiftRows
    --    MixColumns
    --    AddRoundKey
    -- Final Round of:
    --    SubBytes
    --    ShiftRows
    --    AddRoundKey
    -- then output the result, cipher text (encrypted)

    -- main FSM process
    -- outer FSM for enc_state and inner FSM for step_state
    enc_fsm_proc: process(clk)
        -- signal or variable ?
        variable round: integer range 1 to 9 := 1; -- count round number for processing state
    begin
        if rising_edge(clk) then
            -- reset happens only during DONE state
            aes_done <= '0'; -- default (see DONE case for high)
            case enc_state is
                when IDLE =>
                    led_progress <= 0;
                    if start = '1' then
                        enc_state <= PRE;
                        ark_k <= to_matrix(rks(0)); -- initial round key (1st)
                        ark_i <= to_matrix(v_i); -- input plain text input to AddRoundKey
                        round := 1;
                    end if;
                when PRE =>
                    led_progress <= 1;
                    -- we are in the pre rounds step (first AddRoundKey), we start the processing steps (output to SubBytes)
                    sb_i <= ark_o; -- output of AddRoundKey goes to SubBytes input
                    enc_state <= PROCESSING;
                    step_state <= SUB_BYTES_S;
                when PROCESSING =>
                    led_progress <= 1 + round;
                    case step_state is
                        when SUB_BYTES_S =>
                            sr_i <= sb_o;
                            step_state <= SHIFT_ROWS_S;
                        when SHIFT_ROWS_S =>
                            mc_i <= sr_o;
                            step_state <= MIX_COLUMNS_S;
                        when MIX_COLUMNS_S =>
                            ark_k <= to_matrix(rks(round)); -- round key for this round
                            ark_i <= mc_o;
                            step_state <= ADD_ROUND_KEY_S;
                        when ADD_ROUND_KEY_S =>
                            -- check if last round
                            if round = 9 then -- >=9 to be sure ?
                                enc_state <= POST;
                            else
                                round := round + 1;
                            end if;
                            --either way output to SubBytes input
                            sb_i <= ark_o;
                            step_state <= SUB_BYTES_S;
                        when others => --dh?
                            enc_state <= IDLE;
                    end case;
                when POST =>
                    led_progress <= 11; -- final round
                    case step_state is
                        when SUB_BYTES_S =>
                            sr_i <= sb_o;
                            step_state <= SHIFT_ROWS_S;
                        when SHIFT_ROWS_S =>
                            ark_k <= to_matrix(rks(10)); -- final round key (11th)
                            ark_i <= sr_o;
                            step_state <= ADD_ROUND_KEY_S;
                        when ADD_ROUND_KEY_S =>
                            v_o <= to_vector(ark_o); -- FINAL OUTPUT: cipher text
                            enc_state <= DONE;
                            aes_done <= '1'; -- ENCRYPTION DONE, set done here or in DONE state ? keep it here so it's not delayed a cycle compared to v_o ?
                        when others => --dh?
                            enc_state <= IDLE;
                    end case;
                when DONE =>
                    aes_done <= '1'; --just above? we do it here also to keep it high until reset
                    led_progress <= 0;
                    if reset = '1' then
                        -- RESET ALL:
                        enc_state <= IDLE;
                        step_state <= SUB_BYTES_S; -- sub_bytes is the first encryption step
                        v_o <= (others => '0'); -- clear output
                        aes_done <= '0';
                        round := 1;
                        led_progress <= 0;
                        -- necessary ? -- clear all steps inputs
                        mc_i  <= ZERO_MATRIX;
                        sr_i  <= ZERO_MATRIX;
                        sb_i  <= ZERO_MATRIX;
                        ark_i <= ZERO_MATRIX;
                        ark_k <= ZERO_MATRIX;

                    end if;
                when others => --dh ?
                    -- reset also ?
                    -- RESET ALL:
                    enc_state <= IDLE;
                    step_state <= SUB_BYTES_S; -- sub_bytes is the first encryption step
                    v_o <= (others => '0'); -- clear output
                    aes_done <= '0';
                    round := 1;
                    led_progress <= 0;
                    -- necessary ? -- clear all steps inputs
                    mc_i  <= ZERO_MATRIX;
                    sr_i  <= ZERO_MATRIX;
                    sb_i  <= ZERO_MATRIX;
                    ark_i <= ZERO_MATRIX;
                    ark_k <= ZERO_MATRIX;
            end case;
        end if;
    end process enc_fsm_proc;

    -- input is v_i
    -- execute each of the 4 steps of AES in sequence (11 steps in total?)
    -- FSM to control the steps
    -- when done, set aes_done signal high
    -- output the encrypted vector to v_o


end Behavioral;
