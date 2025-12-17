----------------------------------------------------------------------------------
-- Authors: Lucas Placentino and Mehrdad Gholamnejad
-- 
-- Create Date: 2025
-- Module Name: aes_enc - Behavioral
-- Project Name: AES Encryption Implementation on an FPGA
-- Target Devices: Digilent Basys 3
-- Description: 
-- 
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity aes_enc is
    port (
        clock: in std_logic;
        reset: in std_logic;
        start: in std_logic;
        v_i: in std_logic_vector(127 downto 0);
        v_o: out std_logic_vector(127 downto 0);
        done: out std_logic
    );
end aes_enc;

architecture Behavioral of aes_enc is

begin


    -- input is v_i
    -- execute each of the 4 steps of AES in sequence
    -- when done, set done signal high
    -- output the encrypted vector to v_o


end Behavioral;
