----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/12/2019 10:08:41 AM
-- Design Name: 
-- Module Name: Stream - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Stream is
    Port ( InputBus : in STD_LOGIC_VECTOR (31 downto 0);
           OutputBus : out STD_LOGIC_VECTOR (23 downto 0));
end Stream;

architecture Behavioral of Stream is

begin

OutputBus <= InputBus(23 downto 0);

end Behavioral;
