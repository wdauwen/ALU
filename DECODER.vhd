----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:12:59 09/21/2015 
-- Design Name: 
-- Module Name:    DECODER - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DECODER is
    Port ( DEC1 : in  STD_LOGIC;
           DEC2 : in  STD_LOGIC;
           ODEC1 : out  STD_LOGIC;
           ODEC2 : out  STD_LOGIC;
           ODEC3 : out  STD_LOGIC;
           ODEC4 : out  STD_LOGIC);
end DECODER;

architecture Behavioral of DECODER is

begin
ODEC1 <= NOT DEC1 AND NOT DEC2;
ODEC2 <= NOT DEC1 AND NOT DEC2;
ODEC3 <= NOT DEC2 AND DEC1;
ODEC4 <= DEC1 AND DEC2;

end Behavioral;

