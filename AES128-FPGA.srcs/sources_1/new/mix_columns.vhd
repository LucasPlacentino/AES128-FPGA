----------------------------------------------------------------------------------
-- Authors: Lucas Placentino and Mehrdad Gholamnejad
-- 
-- Create Date: 2025
-- Module Name: mix_columns - Behavioral
-- Project Name: AES Encryption Implementation on an FPGA
-- Target Devices: Digilent Basys 3
-- Description: 
-- 
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.matrix_type_pkg.ALL;

entity mix_columns is
    port (
        matrix_in: in byte_matrix_t; -- input to mix_columns
        matrix_out: out byte_matrix_t -- output matrix
);
end mix_columns;

architecture Behavioral of mix_columns is

    --get mul2 and mul3 LUTs from provided vhd file
    component LUT_mul2 is 
        port ( 
            byte_in: in std_logic_vector (7 downto 0);
            byte_out: out std_logic_vector (7 downto 0) 
        );
    end component;
    component LUT_mul3 is 
        port ( 
            byte_in: in std_logic_vector (7 downto 0);
            byte_out: out std_logic_vector (7 downto 0) 
        );
    end component;

    -- intermediate signals
    signal mul2_o: byte_matrix_t;
    signal mul3_o: byte_matrix_t;

begin

    --without a process:
    --creates a mul2 and mul3 operation for every byte in the matrix
    gen_rows: for i in 0 to 3 generate
        gen_cols: for j in 0 to 3 generate
            lut_mul2_c: LUT_mul2 port map(
                byte_in => matrix_in(i, j),
                byte_out => mul2_o(i, j)
            );
            lut_mul3_c: LUT_mul3 port map(
                byte_in => matrix_in(i, j),
                byte_out => mul3_o(i, j)
            );

            --if not using below transformations:
            -- matrix_out(0, j) <= mul2_o(0, j) xor mul3_o(1, j) xor matrix_in(2, j) xor matrix_in(3, j);
            -- matrix_out(1, j) <= matrix_in(0, j) xor mul2_o(1, j) xor mul3_o(2, j) xor matrix_in(3, j);
            -- matrix_out(2, j) <= matrix_in(0, j) xor matrix_in(1, j) xor mul2_o(2, j) xor mul3_o(3, j);
            -- matrix_out(3, j) <= mul3_o(0, j) xor matrix_in(1, j) xor matrix_in(2, j) xor mul2_o(3, j);
            --or:
            -- matrix_out(i, j) <=  
                        -- XOR is commutative, so order doesn't matter
            --             mul2_o(i, j) 
            --         xor mul3_o((i + 1) mod 4, j)
            --         xor matrix_in((i + 2) mod 4, j)
            --         xor matrix_in((i + 3) mod 4, j);

        end generate;
    end generate;

    --if not using above transformations:
    --MixColumns transformation:
    --creates the mix operations for every column
    gen_cols_mix: for j in 0 to 3 generate
        matrix_out(0, j) <= mul2_o(0, j) xor mul3_o(1, j) xor matrix_in(2, j) xor matrix_in(3, j);

        matrix_out(1, j) <= matrix_in(0, j) xor mul2_o(1, j) xor mul3_o(2, j) xor matrix_in(3, j);

        matrix_out(2, j) <= matrix_in(0, j) xor matrix_in(1, j) xor mul2_o(2, j) xor mul3_o(3, j);

        matrix_out(3, j) <= mul3_o(0, j) xor matrix_in(1, j) xor matrix_in(2, j) xor mul2_o(3, j);
    end generate;
    --(use this one because it's clearer and more like the project guide explanation)

end Behavioral;