-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity conv_2d_cl_array_array_ap_fixed_4u_config11_s_w11_V_rom is 
    generic(
             DWIDTH     : integer := 113; 
             AWIDTH     : integer := 6; 
             MEM_SIZE    : integer := 36
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of conv_2d_cl_array_array_ap_fixed_4u_config11_s_w11_V_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00001000110011001111111111111111111110100000010001111111111111111111100011011010100000000000000001010010010001101", 
    1 => "00000000101101111000000000000000000000110111001000000000000000000000001001100001011111111111111111110101011101001", 
    2 => "11111000110010010111111111111111111010011001010000000000000000000000001000000000011111111111111110111110000011011", 
    3 => "00001011000110000000000000000000000110100100111011111111111111111111110110001101111111111111111101111000000110111", 
    4 => "00011111011110110000000000000000010000011110000010000000000000000000110111101011100000000000000001001000100100111", 
    5 => "11111001101100101000000000000000000100110110001100000000000000000001001111001111111111111111111111101011001010001", 
    6 => "11111110010100011000000000000000000000010010001011111111111111111111110100010111000000000000000001001111000110110", 
    7 => "00010011001101010000000000000000000010000001010101111111111111111110110000110000011111111111111110011110110011001", 
    8 => "00010000010110100000000000000000010011011011010000000000000000000001101101000100100000000000000001010110000011001", 
    9 => "11111011011010001111111111111111111111100011100011111111111111111111100110100000111111111111111111111100001100100", 
    10 => "00000011110101111111111111111111111110100011001011111111111111111111110101110100100000000000000000011110001011001", 
    11 => "00000100101001101000000000000000000001100110001010000000000000000000110110010100100000000000000000000000011001000", 
    12 => "00000101111100111111111111111111111110011101000010000000000000000000101101111011011111111111111111111011111101101", 
    13 => "11100111011110010111111111111111110000110011100001111111111111111111111010000010100000000000000000010100101100000", 
    14 => "00011110000111001000000000000000000110100001101011111111111111111111011111110101000000000000000000101010111110110", 
    15 => "11011101101011110111111111111111111100110101000001111111111111111111110110000110111111111111111111011000111010000", 
    16 => "00000110100110111000000000000000010010101101110111111111111111111011001011011111000000000000000000011100001110000", 
    17 => "11101000101001111000000000000000010000011101010010000000000000000000010011001111011111111111111111001000110000100", 
    18 => "11100110001111000000000000000000000111101101011100000000000000000100101000011011000000000000000000001010001100111", 
    19 => "01100000000101001000000000000000000011111010000010000000000000000001111001110111111111111111111111111100010111101", 
    20 => "11011110000000111000000000000000000111000101011010000000000000000001111010100010100000000000000000110010000011010", 
    21 => "00001101011110111111111111111111111110110100110110000000000000000000001011011000011111111111111111100101011011111", 
    22 => "11110100101101001111111111111111111000110000111111111111111111111110011100101001000000000000000000010011010101000", 
    23 => "11100101111111000000000000000000000010100011100110000000000000000000100101011110000000000000000000010010000100111", 
    24 => "00000011010100001000000000000000000010000001000011111111111111111111101111111110011111111111111111111010110111010", 
    25 => "00001010011110111111111111111111111111100110000001111111111111111111011010000101111111111111111111111000111100010", 
    26 => "00001100111010000000000000000000000011000001010100000000000000000000101001111101000000000000000000011110111001110", 
    27 => "11111011111001111000000000000000000000000110000101111111111111111111110011011110111111111111111111100100010001011", 
    28 => "00100011011010100000000000000000000100101101010000000000000000000000100101100111000000000000000000100010101110100", 
    29 => "11100100100000000111111111111111111110011110000001111111111111111110001101100111000000000000000000001101100011110", 
    30 => "11110000110100110000000000000000000010010011111101111111111111111111011111011011000000000000000000100001111111010", 
    31 => "00011010111011100000000000000000000000010111110100000000000000000000101100000100100000000000000000000110000000101", 
    32 => "11110000011111010000000000000000000000001001001101111111111111111111011010111111111111111111111111010101000111101", 
    33 => "00010010000001000000000000000000000001110101000010000000000000000000000100000000111111111111111111111101001110101", 
    34 => "00001011111001000000000000000000000010100011101000000000000000000000110110100001111111111111111111111001111100110", 
    35 => "11110100110100011111111111111111111111111011101111111111111111111111101000000000111111111111111111111100111100110" );


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

entity conv_2d_cl_array_array_ap_fixed_4u_config11_s_w11_V is
    generic (
        DataWidth : INTEGER := 113;
        AddressRange : INTEGER := 36;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of conv_2d_cl_array_array_ap_fixed_4u_config11_s_w11_V is
    component conv_2d_cl_array_array_ap_fixed_4u_config11_s_w11_V_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    conv_2d_cl_array_array_ap_fixed_4u_config11_s_w11_V_rom_U :  component conv_2d_cl_array_array_ap_fixed_4u_config11_s_w11_V_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


