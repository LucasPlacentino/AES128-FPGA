----------------------------------------------------------------------------------
-- Authors: Lucas Placentino and Mehrdad Gholamnejad
-- 
-- Create Date: 2025
-- Module Name: sub_byte - Behavioral
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

entity sub_byte is
    port (
        matrix_in: in byte_matrix_t; -- input to sub_byte
        matrix_out: out byte_matrix_t -- output matrix
    );
end sub_byte;

architecture Behavioral of sub_byte is

    -- get S_box from provided vhd file
    component S_box is 
        port ( 
            byte_in: in std_logic_vector (7 downto 0);
            byte_out: out std_logic_vector (7 downto 0) 
        );
    end component;


    --signal temp_matrix: byte_matrix_t;

begin

    -- process(matrix_in)
    -- begin
    --     for i in 0 to 3 loop
    --         for j in 0 to 3 loop
    --             -- We generate as much S_boxes as bytes in a 4x4 matrix and connect
    --             -- them to each byte.
    --             S : S_box port map(
    --                 byte_in => matrix_in(i, j),
    --                 byte_out => temp_matrix(i, j)
    --             );
    --         end loop;
    --     end loop;
    -- end process;

    -- matrix_out <= temp_matrix;


    --without a process:
    --creates a s_box instance for every byte in the matrix
    gen_rows: for i in 0 to 3 generate
        gen_cols: for j in 0 to 3 generate
            s_box_c : S_box port map(
                byte_in => matrix_in(i, j),
                byte_out => matrix_out(i, j)
            );
        end generate;
    end generate;


end Behavioral;
