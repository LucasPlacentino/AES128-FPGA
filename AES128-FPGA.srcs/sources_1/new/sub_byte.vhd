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
    -- use generation:
    --creates a s_box instance for every byte in the matrix
    gen_rows: for i in 0 to 3 generate
        gen_cols: for j in 0 to 3 generate
            s_box_c : S_box port map(
                byte_in => matrix_in(i, j),
                byte_out => matrix_out(i, j)
            );
        end generate;
    end generate;
    -- generation does what's below:

    -- for each byte (matrix cell):
    -- row0:
    s_box_c_00 : S_box port map( byte_in => matrix_in(0,0), byte_out => matrix_out(0,0) );
    s_box_c_01 : S_box port map( byte_in => matrix_in(0,1), byte_out => matrix_out(0,1) );
    s_box_c_02 : S_box port map( byte_in => matrix_in(0,2), byte_out => matrix_out(0,2) );
    s_box_c_03 : S_box port map( byte_in => matrix_in(0,3), byte_out => matrix_out(0,3) );
    -- row1:
    s_box_c_10 : S_box port map( byte_in => matrix_in(1,0), byte_out => matrix_out(1,0) );
    s_box_c_11 : S_box port map( byte_in => matrix_in(1,1), byte_out => matrix_out(1,1) );
    s_box_c_12 : S_box port map( byte_in => matrix_in(1,2), byte_out => matrix_out(1,2) );
    s_box_c_13 : S_box port map( byte_in => matrix_in(1,3), byte_out => matrix_out(1,3) );
    -- row2:
    s_box_c_20 : S_box port map( byte_in => matrix_in(2,0), byte_out => matrix_out(2,0) );
    s_box_c_21 : S_box port map( byte_in => matrix_in(2,1), byte_out => matrix_out(2,1) );
    s_box_c_22 : S_box port map( byte_in => matrix_in(2,2), byte_out => matrix_out(2,2) );
    s_box_c_23 : S_box port map( byte_in => matrix_in(2,3), byte_out => matrix_out(2,3) );
    -- row3:
    s_box_c_30 : S_box port map( byte_in => matrix_in(3,0), byte_out => matrix_out(3,0) );
    s_box_c_31 : S_box port map( byte_in => matrix_in(3,1), byte_out => matrix_out(3,1) );
    s_box_c_32 : S_box port map( byte_in => matrix_in(3,2), byte_out => matrix_out(3,2) );
    s_box_c_33 : S_box port map( byte_in => matrix_in(3,3), byte_out => matrix_out(3,3) );


end Behavioral;
