----------------------------------------------------------------------------------
-- Authors: Lucas Placentino and Mehrdad Gholamnejad
-- 
-- Create Date: 2025
-- Module Name: add_round_key - Behavioral
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

-- import keys here ? no, get them as input ports, use them in aes_enc, depending on the step

entity add_round_key is
    port (
        matrix_in: in byte_matrix_t; -- input to AddRoundKey
        key: in byte_matrix_t; -- key for AddRoundKey
        matrix_out: out byte_matrix_t -- output matrix
    );
end add_round_key;

architecture Behavioral of add_round_key is

    -- bitwise XOR between input matrix and key


    --signal temp_matrix: byte_matrix_t := ( others => (others => x"00") );

begin

    -- process(matrix_in, key)
    -- begin
    --     for i in 0 to 3 loop
    --         for j in 0 to 3 loop
    --             temp_matrix(i, j) <= matrix_in(i, j) xor key(i, j);
    --         end loop;
    --     end loop;
    -- end process;

    -- matrix_out <= temp_matrix;


    -- --without a process:
    -- --creates an xor operation for every byte in the matrix
    -- gen_rows: for i in 0 to 3 generate
    --     gen_cols: for j in 0 to 3 generate
    --         matrix_out(i, j) <= matrix_in(i, j) xor key(i, j);
    --     end generate;
    -- end generate;
    -- -- generation does what's below:

    -- row0:
    matrix_out(0,0) <= matrix_in(0,0) xor key(0,0);
    matrix_out(0,1) <= matrix_in(0,1) xor key(0,1);
    matrix_out(0,2) <= matrix_in(0,2) xor key(0,2);
    matrix_out(0,3) <= matrix_in(0,3) xor key(0,3);
    -- row1:
    matrix_out(1,0) <= matrix_in(1,0) xor key(1,0);
    matrix_out(1,1) <= matrix_in(1,1) xor key(1,1);
    matrix_out(1,2) <= matrix_in(1,2) xor key(1,2);
    matrix_out(1,3) <= matrix_in(1,3) xor key(1,3);
    -- row2:
    matrix_out(2,0) <= matrix_in(2,0) xor key(2,0);
    matrix_out(2,1) <= matrix_in(2,1) xor key(2,1);
    matrix_out(2,2) <= matrix_in(2,2) xor key(2,2);
    matrix_out(2,3) <= matrix_in(2,3) xor key(2,3);
    -- row3:
    matrix_out(3,0) <= matrix_in(3,0) xor key(3,0);
    matrix_out(3,1) <= matrix_in(3,1) xor key(3,1);
    matrix_out(3,2) <= matrix_in(3,2) xor key(3,2);
    matrix_out(3,3) <= matrix_in(3,3) xor key(3,3);

end Behavioral;