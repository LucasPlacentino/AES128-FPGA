----------------------------------------------------------------------------------
-- Authors: Lucas Placentino and Mehrdad Gholamnejad
-- 
-- Create Date: 2025
-- Module Name: add_round_key_tb - bench
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

entity add_round_key_tb is
    --  no i/o
end add_round_key_tb;

architecture bench of add_round_key_tb is

    component add_round_key is
        port (
            matrix_in: in byte_matrix_t; -- input to AddRoundKey
            key: in byte_matrix_t; -- key for AddRoundKey
            matrix_out: out byte_matrix_t -- output matrix
        );
    end component;

    -- signals:
    signal matrix_input: byte_matrix_t := ( others => (others => x"00") );
    signal key_input: byte_matrix_t := ( others => (others => x"00") );
    signal matrix_output: byte_matrix_t := ( others => (others => x"00") );

begin

    add_round_key_c : add_round_key
        port map (
            matrix_in => matrix_input,
            key => key_input,
            matrix_out => matrix_output
        );

    stimulus: process
        variable expected_output: byte_matrix_t;
        variable delay_time: time := 2 ns; --delay ? 10ns ? 12ns ? 20ns ? 40ns ?
        -- 100MHz->10ns clock period
        -- but the logic in ARK is purely combinatorial we could just put 1ns?
    begin

        -- sanity check (test 0):
        matrix_input <= to_matrix(x"00000000_00000000_00000000_00000000");
        key_input <= to_matrix(x"00000000_00000000_00000000_00000000");
        expected_output := to_matrix(x"00000000_00000000_00000000_00000000");
        wait for delay_time;
        assert matrix_output = expected_output report "Test 0 SANITY CHECK failed, output mismatch" severity error;



        --- PRE round(0): ---
        key_input <= to_matrix(x"2B7E1516_28AED2A6_ABF71588_09CF4F3C"); --key1

        -- test 1:
        matrix_input <= to_matrix(x"6BC1BEE2_2E409F96_E93D7E11_7393172A");
        expected_output := to_matrix(x"40BFABF4_06EE4D30_42CA6B99_7A5C5816");
        wait for delay_time;
        assert matrix_output = expected_output report "Test 1 failed, output mismatch" severity error;

        -- test 2:
        matrix_input <= to_matrix(x"AE2D8A57_1E03AC9C_9EB76FAC_45AF8E51");
        expected_output := to_matrix(x"85539F41_36AD7E3A_35407A24_4C60C16D");
        wait for delay_time;
        assert matrix_output = expected_output report "Test 2 failed, output mismatch" severity error;

        -- test 3:
        matrix_input <= to_matrix(x"30C81C46_A35CE411_E5FBC119_1A0A52EF");
        expected_output := to_matrix(x"1BB60950_8BF236B7_4E0CD491_13C51DD3");
        wait for delay_time;
        assert matrix_output = expected_output report "Test 3 failed, output mismatch" severity error;

        -- test 4:
        matrix_input <= to_matrix(x"F69F2445_DF4F9B17_AD2B417B_E66C3710");
        expected_output := to_matrix(x"DDE13153_F7E149B1_06DC54F3_EFA3782C");
        wait for delay_time;
        assert matrix_output = expected_output report "Test 4 failed, output mismatch" severity error;

        --- test other round ? ---
        -- round 1: --
        key_input <= to_matrix(X"A0FAFE17_88542CB1_23A33939_2A6C7605"); --key2
        matrix_input <= to_matrix(X"529F16C2_978615CA_E01AAE54_BA1A2659");
        expected_output := to_matrix(X"F265E8D5_1FD2397B_C3B9976D_9076505C");
        wait for delay_time;
        assert matrix_output = expected_output report "Test 5 failed, output mismatch" severity error;

        -- round2: --
        key_input <= to_matrix(X"f2c295f27a96b9435935807a7359f67f"); --key3
        matrix_input <= to_matrix(X"0F31E929_319A3558_AEC95893_39F04D87");
        expected_output := to_matrix(X"FDF37CDB_4B0C8C1B_F7FCD8E9_4AA9BBF8");
        wait for delay_time;
        assert matrix_output = expected_output report "Test 6 failed, output mismatch" severity error;

        -- round3: --



        -- POST round(10): --
        key_input <= to_matrix(X"d014f9a8c9ee2589e13f0cc8b6630ca6"); --key11
        matrix_input <= to_matrix(X"EAC3821C_C49413E9_49A1C63B_9205E331");
        expected_output := to_matrix(X"3AD77BB4_0D7A3660_A89ECAF3_2466EF97");
        wait for delay_time;
        assert matrix_output = expected_output report "Test last failed, output mismatch" severity error;

    end process;


end bench;
