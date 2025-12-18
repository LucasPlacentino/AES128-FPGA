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
        matrix_out: out byte_matrix_t -- output block
    );
end add_round_key;

architecture Behavioral of add_round_key is

    -- bitwise XOR between input matrix and key


    --signal temp_matrix: byte_matrix4;

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


    --without a process:
    gen_rows: for i in 0 to 3 generate
        gen_cols: for j in 0 to 3 generate
            matrix_out(i, j) <= matrix_in(i, j) xor key(i, j);
        end generate;
    end generate;

end Behavioral;