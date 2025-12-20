----------------------------------------------------------------------------------
-- Authors: Lucas Placentino and Mehrdad Gholamnejad
-- 
-- Create Date: 2025
-- Module Name: shift_rows - Behavioral
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

entity shift_rows is
    port (
        matrix_in: in byte_matrix_t; -- input to shift_rows
        matrix_out: out byte_matrix_t -- output matrix
);
end shift_rows;

architecture Behavioral of shift_rows is

    -- signal temp_matrix: byte_matrix_t;

begin

    -- process(matrix_in)
    -- begin
    --     -- row 0: no shift
    --     temp_matrix(0, 0) <= matrix_in(0, 0);
    --     temp_matrix(0, 1) <= matrix_in(0, 1);
    --     temp_matrix(0, 2) <= matrix_in(0, 2);
    --     temp_matrix(0, 3) <= matrix_in(0, 3);

    --     -- row 1: shift left by 1
    --     temp_matrix(1, 0) <= matrix_in(1, 1);
    --     temp_matrix(1, 1) <= matrix_in(1, 2);
    --     temp_matrix(1, 2) <= matrix_in(1, 3);
    --     temp_matrix(1, 3) <= matrix_in(1, 0);

    --     -- row 2: shift left by 2
    --     temp_matrix(2, 0) <= matrix_in(2, 2);
    --     temp_matrix(2, 1) <= matrix_in(2, 3);
    --     temp_matrix(2, 2) <= matrix_in(2, 0);
    --     temp_matrix(2, 3) <= matrix_in(2, 1);

    --     -- row 3: shift left by 3
    --     temp_matrix(3, 0) <= matrix_in(3, 3);
    --     temp_matrix(3, 1) <= matrix_in(3, 0);
    --     temp_matrix(3, 2) <= matrix_in(3, 1);
    --     temp_matrix(3, 3) <= matrix_in(3, 2);
    -- end process;

    -- matrix_out <= temp_matrix;


    -- row 0: no shift
    matrix_out(0, 0) <= matrix_in(0, 0);
    matrix_out(0, 1) <= matrix_in(0, 1);
    matrix_out(0, 2) <= matrix_in(0, 2);
    matrix_out(0, 3) <= matrix_in(0, 3);

    -- row 1: shift left by 1
    matrix_out(1, 0) <= matrix_in(1, 1);
    matrix_out(1, 1) <= matrix_in(1, 2);
    matrix_out(1, 2) <= matrix_in(1, 3);
    matrix_out(1, 3) <= matrix_in(1, 0);

    -- row 2: shift left by 2
    matrix_out(2, 0) <= matrix_in(2, 2);
    matrix_out(2, 1) <= matrix_in(2, 3);
    matrix_out(2, 2) <= matrix_in(2, 0);
    matrix_out(2, 3) <= matrix_in(2, 1);

    -- row 3: shift left by 3
    matrix_out(3, 0) <= matrix_in(3, 3);
    matrix_out(3, 1) <= matrix_in(3, 0);
    matrix_out(3, 2) <= matrix_in(3, 1);
    matrix_out(3, 3) <= matrix_in(3, 2);


    -- -- uses generation
    -- --creates the shift operations for every row
    -- gen_rows: for i in 0 to 3 generate
    --     gen_cols: for j in 0 to 3 generate
    --         matrix_out(i, j) <= matrix_in(i, (j + i) mod 4); -- left circular shift
    --     end generate;
    -- end generate;

end Behavioral;
