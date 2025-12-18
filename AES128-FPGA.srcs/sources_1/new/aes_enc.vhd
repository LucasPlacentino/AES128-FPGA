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

--! TODO: where do we import the keys ? here or add_round_key ?

entity aes_enc is
    port (
        clk: in std_logic;
        reset: in std_logic;
        start: in std_logic;
        v_i: in std_logic_vector(127 downto 0); -- input plain text
        v_o: out std_logic_vector(127 downto 0); -- output cipher text (encrypted)
        aes_done: out std_logic
    ); -- TODO: do we need a ready flag ? (output)
end aes_enc;

architecture Behavioral of aes_enc is

    -- --- Components of the 4 steps: ---
    -- sub_bytes:
    component sub_bytes is
        port (
            -- TODO: define ports
        );
    end component;
    -- shift_rows:
    component shift_rows is
        port (
            -- TODO: define ports
        );
    end component;
    -- mix_columns:
    component mix_columns is
        port (
            -- TODO: define ports
        );
    end component;
    -- add_round_key:
    component add_round_key is
        port (
            -- TODO: define ports
        );
    end component;
    -- -----------------------------------

    -- Round keys:
    constant RK_enc : rk_array_t(0 to 10) := (
        --TODO: define the round keys here
    );


    -- -- Signals --
    type encryption_state_t is (IDLE, PRE, PROCESSING, POST, DONE);
    signal enc_state: encryption_state_t := IDLE; -- default state is IDLE
    type step_state_t is (SUB_BYTES, SHIFT_ROWS, MIX_COLUMNS, ADD_ROUND_KEY);
    signal step_state: step_state_t := SUB_BYTES; -- default state is SUB_BYTES

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
                step_state <= STEP_SUB_BYTES; -- sub_bytes is the first encryption step
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
