----------------------------------------------------------------------------------
-- Authors: Lucas Placentino and Mehrdad Gholamnejad
-- 
-- Create Date: 2025
-- Module Name: aes_enc_tb - bench
-- Project Name: AES Encryption Implementation on an FPGA
-- Target Devices: Digilent Basys 3
-- Description: 
-- 
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


-- 1. create clock
-- 2. do reset
-- 3. put vector
-- 4. start encryption
-- 5. wait for done
-- 6. also check for expected number of cycles

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.matrix_type_pkg.ALL; -- for rk_array_t

entity aes_enc_tb is
    --  no i/o
end aes_enc_tb;

architecture bench of aes_enc_tb is

    component aes_enc is
        port (
            clk: in std_logic;
            reset: in std_logic;
            start: in std_logic;
            rks: in rk_array_t; -- round keys array
            v_i: in std_logic_vector(127 downto 0); -- input plain text
            v_o: out std_logic_vector(127 downto 0); -- output cipher text (encrypted)
            aes_done: out std_logic;
            led_progress: out integer range 0 to 11 --! 0 is idle
        );
    end component;

    -- Round keys array:
    constant RKS: rk_array_t := (
    -- constant RKS: array(0 to 10) of std_logic_vector(127 downto 0) := (
        --key for round 1 to 11
        x"2b7e151628aed2a6abf7158809cf4f3c", -- initial key (1st round)
        x"a0fafe1788542cb123a339392a6c7605", -- round 2
        x"f2c295f27a96b9435935807a7359f67f", -- round 3
        x"3d80477d4716fe3e1e237e446d7a883b", -- round 4
        x"ef44a541a8525b7fb671253bdb0bad00", -- round 5
        x"d4d1c6f87c839d87caf2b8bc11f915bc", -- round 6
        x"6d88a37a110b3efddbf98641ca0093fd", -- round 7
        x"4e54f70e5f5fc9f384a64fb24ea6dc4f", -- round 8
        x"ead27321b58dbad2312bf5607f8d292f", -- round 9
        x"ac7766f319fadc2128d12941575c006e", -- round 10
        x"d014f9a8c9ee2589e13f0cc8b6630ca6" -- round 11 (final)
    );

    signal clk: std_logic := '0';
    signal reset_enc: std_logic := '0';
    signal start_enc: std_logic := '0';
    signal input_vector: std_logic_vector(127 downto 0) := (others => '0');
    signal output_vector: std_logic_vector(127 downto 0);
    signal done_enc: std_logic := '0';

    constant clock_period: time := 10 ns; -- 100MHz clock = 10ns period
    signal result: std_logic_vector(127 downto 0) := (others => '0'); --only to show output in simulator wave window for longer
    signal expected_result: std_logic_vector(127 downto 0) := (others => '0');

    shared variable expected_output: std_logic_vector(127 downto 0);

begin

    aes_enc_c: aes_enc
        port map (
            clk => clk, -- would be FPGA's clock
            reset => reset_enc, -- would be high on btnR press
            start => start_enc, -- would be high on btnC press
            rks => RKS,
            v_i => input_vector,
            v_o => output_vector,
            aes_done => done_enc, -- would show "AES" on 7-seg display
            led_progress => open --ignore for testbench
        );

    -- Clock:
    clk_process: process
    begin
        while true loop
            clk <= '0';
            --wait for 5 ns; -- 10ns clock period -> 100 MHz like the Basys3
            wait for clock_period/2;
            clk <= '1';
            --wait for 5 ns;
            wait for clock_period/2;
        end loop;
    end process clk_process;

    get_output: process(output_vector)
    begin
        if output_vector /= x"00000000_00000000_00000000_00000000" then
            result <= output_vector; -- keep output stable for viewing in simulator (output_vector quickly goes back to 0 after each test)
            expected_result <= expected_output;
        end if;
    end process get_output;

    -- result_check: process(result, expected_result)
    -- begin
    --     assert result = expected_result report "Result signal does not match expected result" severity error;
    -- end process result_check;

    stimulus: process
        constant enc_time: time := 41 * clock_period; --! enough for encryption to finish ?
        -- each clock cycle takes 10ns (100MHz clock)
        -- AES encryption is: 1 pre-round + 9 rounds + 1 post-round
        -- a step takes 1 clock cycle
        -- pre-round is 1 step => 1 clock cycle
        -- each of the 9 rounds is 4 steps => 4 clock cycles per round
        -- post-round is 3 steps => 3 clock cycles
        -- total = 1 + (9 * 4) + 3 = 40 clock cycles
        -- 40 clock cycles * 10ns = 400ns
        -- TODO: need to verify this timing
        -- add a margin of error? like 1 clock cycle more?

        -- variable expected_output: std_logic_vector(127 downto 0);

        --variable result_v: std_logic_vector(127 downto 0) := (others => '0'); --only to show output in simulator wave window for longer

    begin

        -- if output_vector /= x"00000000_00000000_00000000_00000000" then
        --     result_v := output_vector; -- keep output stable for viewing in simulator (output_vector quickly goes back to 0 after each test)
        --     result <= result_v;
        -- end if;

        -- reset testbench
        input_vector <= (others => '0');
        reset_enc <= '1';
        wait for enc_time; -- wait enough time for reset to propagate
        reset_enc <= '0';
        wait for enc_time/4; -- wait enough time for reset to propagate

        -- test 0 (sanity check):
        input_vector <= x"00000000_00000000_00000000_00000000";
        expected_output := x"7DF76B0C_1AB899B3_3E42F047_B91B546F"; -- see https://simewu.com/aes/ with key 2B7E151628AED2A6ABF7158809CF4F3C (key from NIST AES_Core128.pdf Block Cipher Modes of Operation Electronic Codebook (ECB))
        start_enc <= '1';
        wait for enc_time; -- wait enough time for encryption to finish
        -- expected_result <= expected_output;
        assert done_enc = '1' report "Test 0 SANITY CHECK failed, AES done signal not high after encryption delay passed" severity error;
        start_enc <= '0';
        wait for 1 ns; -- small wait to ensure output_vector is stable
        assert output_vector = expected_output report "Test 0 SANITY CHECK failed, output mismatch" severity error; --or comapre to `result`?
        -- assert result = expected_result report "Test 0 SANITY CHECK failed, result signal mismatch" severity error;
        -- reset:
        reset_enc <= '1';
        wait for enc_time; -- wait enough time for reset to propagate
        -- wait for 2ns;
        reset_enc <= '0';

        -- test 1:
        input_vector <= x"6BC1BEE2_2E409F96_E93D7E11_7393172A";
        expected_output := x"3AD77BB4_0D7A3660_A89ECAF3_2466EF97"; -- from NIST AES_Core128.pdf Block Cipher Modes of Operation Electronic Codebook (ECB)
        start_enc <= '1';
        wait for enc_time; -- wait enough time for encryption to finish
        -- expected_result <= expected_output;
        start_enc <= '0';
        assert done_enc = '1' report "Test 1 failed, AES done signal not high after encryption delay passed" severity error;
        wait for 1 ns; -- small wait to ensure output_vector is stable
        assert output_vector = expected_output report "Test 1 failed, output mismatch" severity error;
        -- assert result = expected_result report "Test 1 failed, result signal mismatch" severity error;
        -- reset:
        reset_enc <= '1';
        wait for enc_time; -- wait enough time for reset to propagate
        -- wait for 2ns;
        reset_enc <= '0';

        -- test 2:
        input_vector <= x"AE2D8A57_1E03AC9C_9EB76FAC_45AF8E51";
        expected_output := x"F5D3D585_03B9699D_E785895A_96FDBAAF"; -- from NIST AES_Core128.pdf Block Cipher Modes of Operation Electronic Codebook (ECB)
        start_enc <= '1';
        wait for enc_time; -- wait enough time for encryption to finish
        -- expected_result <= expected_output;
        start_enc <= '0';
        assert done_enc = '1' report "Test 2 failed, AES done signal not high after encryption delay passed" severity error;
        wait for 1 ns; -- small wait to ensure output_vector is stable
        assert output_vector = expected_output report "Test 2 failed, output mismatch" severity error;
        -- assert result = expected_result report "Test 2 failed, result signal mismatch" severity error;
        -- reset:
        reset_enc <= '1';
        wait for enc_time; -- wait enough time for reset to propagate
        -- wait for 2ns;
        reset_enc <= '0';

        -- test 3:
        input_vector <= x"30C81C46_A35CE411_E5FBC119_1A0A52EF";
        expected_output := x"43B1CD7F_598ECE23_881B00E3_ED030688"; -- from NIST AES_Core128.pdf Block Cipher Modes of Operation Electronic Codebook (ECB)
        start_enc <= '1';
        wait for enc_time; -- wait enough time for encryption to finish
        -- expected_result <= expected_output;
        start_enc <= '0';
        assert done_enc = '1' report "Test 3 failed, AES done signal not high after encryption delay passed" severity error;
        wait for 1 ns; -- small wait to ensure output_vector is stable
        assert output_vector = expected_output report "Test 3 failed, output mismatch" severity error;
        -- assert result = expected_result report "Test 3 failed, result signal mismatch" severity error;
        -- reset:
        reset_enc <= '1';
        wait for enc_time; -- wait enough time for reset to propagate
        -- wait for 2ns;
        reset_enc <= '0';

        -- test 4:
        input_vector <= x"F69F2445_DF4F9B17_AD2B417B_E66C3710";
        expected_output := x"7B0C785E_27E8AD3F_82232071_04725DD4"; -- from NIST AES_Core128.pdf Block Cipher Modes of Operation Electronic Codebook (ECB)
        start_enc <= '1';
        wait for enc_time; -- wait enough time for encryption to finish
        -- expected_result <= expected_output;
        start_enc <= '0';
        assert done_enc = '1' report "Test 4 failed, AES done signal not high after encryption delay passed" severity error;
        wait for 1 ns; -- small wait to ensure output_vector is stable
        assert output_vector = expected_output report "Test 4 failed, output mismatch" severity error;
        -- assert result = expected_result report "Test 4 failed, result signal mismatch" severity error;
        -- reset:
        reset_enc <= '1';
        wait for enc_time; -- wait enough time for reset to propagate
        -- wait for 2ns;
        reset_enc <= '0';
        
        wait for enc_time; -- wait before ending simulation


    end process stimulus;

end bench;
