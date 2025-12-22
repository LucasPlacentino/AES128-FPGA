----------------------------------------------------------------------------------
-- Authors: Lucas Placentino and Mehrdad Gholamnejad
-- 
-- Create Date: 2025
-- Module Name: shift_rows_tb - bench
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

entity shift_rows_tb is
    --  no i/o
end shift_rows_tb;

architecture bench of shift_rows_tb is

    component shift_rows is
        port (
            matrix_in: in byte_matrix_t; -- input to shift_rows
            matrix_out: out byte_matrix_t -- output matrix
    );
    end component;

    signal matrix_input: byte_matrix_t;
    signal matrix_output: byte_matrix_t;

begin

    shift_rows_c: shift_rows
        port map (
            matrix_in => matrix_input,
            matrix_out => matrix_output
        );

    stimulus: process
        variable expected_output: byte_matrix_t;
        variable delay_time: time := 2 ns; --delay ? 10ns ? 12ns ? 20ns ? 40ns ?
        -- 100MHz->10ns clock period
        -- but the logic in ShiftRows is purely combinatorial we could just put 1ns?
    begin

        -- sanity check (test 0):
        matrix_input <= to_matrix(x"00000000_00000000_00000000_00000000");
        expected_output := to_matrix(x"00000000_00000000_00000000_00000000");
        wait for delay_time;
        assert matrix_output = expected_output report "Test 0 SANITY CHECK failed, output mismatch" severity error;

        -- test 1:
        matrix_input <= to_matrix(x"090862BF_6F28E304_2C747FEE_DA4A6A47");
        expected_output := to_matrix(x"09287F47_6F746ABF_2C4A6204_DA08E3EE");
        wait for delay_time;
        assert matrix_output = expected_output report "Test 1 failed, output mismatch" severity error;

        -- test 2:
        matrix_input <= to_matrix(x"894D9B03_C0B51221_2E56883C_6038534A");
        expected_output := to_matrix(x"89B5884A_C0565303_2E389B21_604D123C");
        wait for delay_time;
        assert matrix_output = expected_output report "Test 2 failed, output mismatch" severity error;
        
        -- test 3:
        matrix_input <= to_matrix(x"540D10B9_B3FE64AF_68B0611E_D6D3EA41");
        expected_output := to_matrix(x"54FE6141_B3B0EAB9_68D310AF_D60D641E");
        wait for delay_time;
        assert matrix_output = expected_output report "Test 3 failed, output mismatch" severity error;

        -- test 4:
        matrix_input <= to_matrix(x"913ECEDE_3A2C982E_C0F976DA_A9F25676");
        expected_output := to_matrix(x"912C7676_3AF956DE_C0F2CE2E_A93E98DA");
        wait for delay_time;
        assert matrix_output = expected_output report "Test 4 failed, output mismatch" severity error;

    end process;

end bench;