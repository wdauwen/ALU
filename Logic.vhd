----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:57:40 09/21/2015 
-- Design Name: 
-- Module Name:    LOGIC - Behavioral 
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

entity LOGIC is
    Port ( LU1 : in  STD_LOGIC;
           LU2 : in  STD_LOGIC;
           EL1 : in  STD_LOGIC;
           EL2 : in  STD_LOGIC;
           EL3 : in  STD_LOGIC;
           O1 : out  STD_LOGIC;
           O2 : out  STD_LOGIC;
           O3 : out  STD_LOGIC);
end LOGIC;

architecture Behavioral of LOGIC is
signal AB, A_B, nietB : STD_LOGIC;
begin
O1 <= AB AND EL1;
O2 <= A_B AND EL2;
O3 <= nietB AND EL3;
AB <= LU1 AND LU2;
A_B <= LU1 OR LU2;
nietB <= NOT LU2;

end Behavioral;






