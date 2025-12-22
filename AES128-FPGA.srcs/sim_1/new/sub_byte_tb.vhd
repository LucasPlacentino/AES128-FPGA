----------------------------------------------------------------------------------
-- Authors: Lucas Placentino and Mehrdad Gholamnejad
-- 
-- Create Date: 2025
-- Module Name: sub_byte_tb - bench
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

entity sub_byte_tb is
    --  no i/o
end sub_byte_tb;

architecture bench of sub_byte_tb is

    component sub_byte
        port (
            matrix_in: in byte_matrix_t; -- input to sub_byte
            matrix_out: out byte_matrix_t -- output matrix
    );
    end component;

    signal matrix_input: byte_matrix_t;
    signal matrix_output: byte_matrix_t;

begin

    sub_byte_c: sub_byte
        port map (
            matrix_in => matrix_input,
            matrix_out => matrix_output
        );

    stimulus: process
        variable expected_output: byte_matrix_t;
        variable delay_time: time := 2 ns; --delay ? 10ns ? 12ns ? 20ns ? 40ns ?
        -- 100MHz->10ns clock period
        -- but the logic in SubBytes is purely combinatorial we could just put 1ns?
    begin

        -- sanity check (test 0):
        matrix_input <= to_matrix(x"00000000_00000000_00000000_00000000");
        expected_output := to_matrix(x"63636363_63636363_63636363_63636363"); -- test at https://simewu.com/aes/
        wait for delay_time;
        assert matrix_output = expected_output report "Test 0 SANITY CHECK failed, output mismatch" severity error;

        -- test 1:
        matrix_input <= to_matrix(x"40BFABF4_06EE4D30_42CA6B99_7A5C5816");
        expected_output := to_matrix(x"090862BF_6F28E304_2C747FEE_DA4A6A47");
        wait for delay_time;
        assert matrix_output = expected_output report "Test 1 failed, output mismatch" severity error;

        -- test 2:
        matrix_input <= to_matrix(x"F265E8D5_1FD2397B_C3B9976D_9076505C");
        expected_output := to_matrix(x"894D9B03_C0B51221_2E56883C_6038534A");
        wait for delay_time;
        assert matrix_output = expected_output report "Test 2 failed, output mismatch" severity error;

        -- test 3:
        matrix_input <= to_matrix(x"FDF37CDB_4B0C8C1B_F7FCD8E9_4AA9BBF8");
        expected_output := to_matrix(x"540D10B9_B3FE64AF_68B0611E_D6D3EA41");
        wait for delay_time;
        assert matrix_output = expected_output report "Test 3 failed, output mismatch" severity error;

        -- test 4:
        matrix_input <= to_matrix(x"ACD1EC9C_A242E2C3_1F690F7A_B704B90F");
        expected_output := to_matrix(x"913ECEDE_3A2C982E_C0F976DA_A9F25676");
        wait for delay_time;
        assert matrix_output = expected_output report "Test 4 failed, output mismatch" severity error;

    end process;


end bench;