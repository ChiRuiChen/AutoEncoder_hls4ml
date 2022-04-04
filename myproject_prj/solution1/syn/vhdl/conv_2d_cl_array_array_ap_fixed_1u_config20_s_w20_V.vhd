-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity conv_2d_cl_array_array_ap_fixed_1u_config20_s_w20_V_rom is 
    generic(
             DWIDTH     : integer := 17; 
             AWIDTH     : integer := 7; 
             MEM_SIZE    : integer := 72
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of conv_2d_cl_array_array_ap_fixed_1u_config20_s_w20_V_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00010000111101010", 1 => "11011101001000111", 
    2 => "00101010100100101", 3 => "00001010011000101", 
    4 => "10110000010011100", 5 => "11111101001000010", 
    6 => "00000110010110100", 7 => "11101101101111111", 
    8 => "11010100101010001", 9 => "11111001101000001", 
    10 => "00001110101010111", 11 => "00010100011000001", 
    12 => "10111001001011110", 13 => "11001101011110100", 
    14 => "00010100000000111", 15 => "00000111011100011", 
    16 => "11000001110111100", 17 => "00100011100111000", 
    18 => "00010101111110110", 19 => "00000100011110100", 
    20 => "11001100000100110", 21 => "11001111000101001", 
    22 => "11111100110011101", 23 => "11011101010010101", 
    24 => "11011000011100101", 25 => "11111011100111111", 
    26 => "11110011111110101", 27 => "00001111011010001", 
    28 => "11010100100000110", 29 => "11011101110101001", 
    30 => "00011100000010111", 31 => "00000011110100010", 
    32 => "10111011111010011", 33 => "00001000111101011", 
    34 => "11001101101111100", 35 => "00011111101000001", 
    36 => "11110010100101100", 37 => "11000000000011100", 
    38 => "11110101000101101", 39 => "00011101101110100", 
    40 => "11001010000100100", 41 => "00000001011100000", 
    42 => "11010010000100111", 43 => "00000100111111100", 
    44 => "11111000100110011", 45 => "11000110101001111", 
    46 => "00010110010101000", 47 => "11110100101011011", 
    48 => "11001110111110001", 49 => "11010100111001010", 
    50 => "11000101100011111", 51 => "11111011011100000", 
    52 => "00101001010000010", 53 => "11001110110010011", 
    54 => "00011100101001101", 55 => "00101000011110010", 
    56 => "11010110011000110", 57 => "11100001001011100", 
    58 => "11001010001000101", 59 => "00001101110010001", 
    60 => "00101101100111001", 61 => "11001111101100010", 
    62 => "11110111011000001", 63 => "00010011111000010", 
    64 => "00010000111110000", 65 => "11100111110100011", 
    66 => "11101101010101010", 67 => "11100111111111110", 
    68 => "00011010111111001", 69 => "00011010010011111", 
    70 => "00011001111011111", 71 => "11110111101111111" );


begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity conv_2d_cl_array_array_ap_fixed_1u_config20_s_w20_V is
    generic (
        DataWidth : INTEGER := 17;
        AddressRange : INTEGER := 72;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of conv_2d_cl_array_array_ap_fixed_1u_config20_s_w20_V is
    component conv_2d_cl_array_array_ap_fixed_1u_config20_s_w20_V_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    conv_2d_cl_array_array_ap_fixed_1u_config20_s_w20_V_rom_U :  component conv_2d_cl_array_array_ap_fixed_1u_config20_s_w20_V_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


