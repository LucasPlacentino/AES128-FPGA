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
        v_i: in std_logic_vector(127 downto 0); -- input plain text
        v_o: out std_logic_vector(127 downto 0); -- output cipher text (encrypted)
        aes_done: out std_logic;
        step: out integer range 0 to 11 --! 0 is idle
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

    -- Round keys array:
    type rk_array_t is array(0 to 10) of std_logic_vector(127 downto 0); -- array of 11 round keys
    constant RK_enc: rk_array_t(0 to 10) := (
    -- constant RK_enc: array(0 to 10) of std_logic_vector(127 downto 0) := (
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


    -- -- Signals --
    type encryption_state_t is (IDLE, PRE, PROCESSING, POST, DONE);
    signal enc_state: encryption_state_t := IDLE; -- default state is IDLE
    type step_state_t is (SUB_BYTES_S, SHIFT_ROWS_S, MIX_COLUMNS_S, ADD_ROUND_KEY_S);
    signal step_state: step_state_t := SUB_BYTES_S; -- default state is SUB_BYTES_S

    -- TODO: other signals
    -- TODO: matrix custom type ?
    signal ark_i: std_logic_vector(127 downto 0); -- AddRoundKey input, will also be the very first input
    signal ark_o: std_logic_vector(127 downto 0); -- AddRoundKey output, will also be the final output
    signal sb_i: std_logic_vector(127 downto 0); -- SubBytes input
    signal sb_o: std_logic_vector(127 downto 0); -- SubBytes output
    signal sr_i: std_logic_vector(127 downto 0); -- ShiftRows input
    signal sr_o: std_logic_vector(127 downto 0); -- ShiftRows output
    signal mc_i: std_logic_vector(127 downto 0); -- MixColumns input
    signal mc_o: std_logic_vector(127 downto 0); -- MixColumns output

begin

    sub_bytes_c : sub_bytes
        port map (
            -- TODO: map ports
        );
    shift_rows_c : shift_rows
        port map (
            -- TODO: map ports
        );
    mix_columns_c : mix_columns
        port map (
            -- TODO: map ports
        );
    add_round_key_c : add_round_key
        port map (
            -- TODO: map ports
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

    -- --- processes: ---
    -- main FSM process
    enc_fsm: process(clk)
        variable round: integer range 1 to 9 := 1;
    begin
        if rising_edge(clk) then
            -- TODO: implement FSM logic
            if reset = '1' then
                encryptor_state <= IDLE;
                step_state <= STEP_SUB_BYTES_S; -- sub_bytes is the first encryption step
                v_o <= (others => '0'); -- clear output
                done <= '0';
                round := 1;
                -- TODO
            else
                case enc_state is
                    when IDLE =>
                        -- TODO
                    when PRE =>
                        -- TODO: inital steps
                    when PROCESSING =>
                        -- TODO: complete step rounds
                    when POST =>
                        -- TODO: final steps
                    when DONE =>
                        done <= '1';
                        -- TODO
                end case;
                -- TODO
            end if;
        end if;
    end process enc_fsm;

    -- input is v_i
    -- execute each of the 4 steps of AES in sequence (11 steps in total?)
    -- FSM to control the steps
    -- when done, set done signal high
    -- output the encrypted vector to v_o


end Behavioral;
