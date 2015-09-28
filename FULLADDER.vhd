----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:24:42 09/21/2015 
-- Design Name: 
-- Module Name:    FULLADDER - Behavioral 
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

entity FULLADDER is
    Port ( ADD1 : in  STD_LOGIC;
           ADD2 : in  STD_LOGIC;
           ADD3 : in  STD_LOGIC;
           CARRYIN : in  STD_LOGIC;
           CARRYOUT : out  STD_LOGIC;
           SUM : out  STD_LOGIC);
end FULLADDER;

architecture Behavioral of FULLADDER is
signal eXOR1, eXOR2, an1, an2 : STD_LOGIC; 
begin
SUM <= eXOR2 AND ADD3;
an1 <= ADD1 AND ADD2 AND ADD3;
an2 <= ADD3 AND eXOR1 AND CARRYIN;
CARRYOUT <= an1 OR an2;
eXOR1 <= ADD1 XOR ADD2;
eXOR2 <= CARRYIN XOR eXOR1;
end Behavioral;

