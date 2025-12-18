library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- This package defines a custom matrix type for AES steps

package matrix_type_pkg is

    type byte_matrix_t is array (0 to 3, 0 to 3) of std_logic_vector (7 downto 0); -- 4x4 matrix of bytes

    function to_byte_matrix (input_vector: std_logic_vector(127 downto 0)) return byte_matrix_t;
    function to_vector (input_matrix: byte_matrix_t) return std_logic_vector;

    type rk_array_t is array (0 to 10) of std_logic_vector (127 downto 0); -- array of 11 round keys

end package matrix_type_pkg;

package body matrix_type_pkg is

    function to_byte_matrix (input_vector: std_logic_vector (127 downto 0)) return byte_matrix_t is
        variable mat : byte_matrix_t;
    begin
        for i in 0 to 3 loop
            for j in 0 to 3 loop
                mat(i, j) := input_vector(127 - (j*4 + i)*8 downto 127 - (j*4 + i + 1)*8 + 1);
            end loop;
        end loop;
        return mat;
    end;

    function to_vector (input_matrix: byte_matrix_t) return std_logic_vector is
        variable vec : std_logic_vector (127 downto 0);
    begin
        for i in 0 to 3 loop
            for j in 0 to 3 loop
                vec(127 - (j*4 + i)*8 downto 127 - (j*4 + i + 1)*8 + 1) := input_matrix(i, j);
            end loop;
        end loop;
        return vec;
    end;

end package body matrix_type_pkg;
