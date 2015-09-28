library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TOP is
    Port ( INVA : in  STD_LOGIC;
           A : in  STD_LOGIC;
           ENA : in  STD_LOGIC;
           B : in  STD_LOGIC;
           ENB : in  STD_LOGIC;
			  CARRYi : in  STD_LOGIC;
			  F1 : in  STD_LOGIC;
			  F0 : in  STD_LOGIC;
           OUTPUT : out  STD_LOGIC;
           CARRYo : out  STD_LOGIC);
           
end TOP;

architecture Behavioral of TOP is
	component LOGIC is
		 Port ( LU1 : in  STD_LOGIC;
				  LU2 : in  STD_LOGIC;
				  EL1 : in  STD_LOGIC;
				  EL2 : in  STD_LOGIC;
				  EL3 : in  STD_LOGIC;
				  O1 : out  STD_LOGIC;
				  O2 : out  STD_LOGIC;
				  O3 : out  STD_LOGIC);
	end component;
	
	component FULLADDER is
    Port ( ADD1 : in  STD_LOGIC;
           ADD2 : in  STD_LOGIC;
           ADD3 : in  STD_LOGIC;
           CARRYIN : in  STD_LOGIC;
           CARRYOUT : out  STD_LOGIC;
           SUM : out  STD_LOGIC);
	end component;
 
	component DECODER is
    Port ( DEC1 : in  STD_LOGIC;
           DEC2 : in  STD_LOGIC;
           ODEC1 : out  STD_LOGIC;
           ODEC2 : out  STD_LOGIC;
           ODEC3 : out  STD_LOGIC;
           ODEC4 : out  STD_LOGIC);
	end component;
	
	signal TOPAN1, TOPAN2, TOPXOR, ENA1, ENA2, ENA3, ENAD, OO1, OO2, OO3, TOPSUM : STD_LOGIC;
	
begin

  l : logic port map (
	 LU1 => TOPXOR,
	 LU2 => TOPAN2,
	 EL1 => ENA1,
	 EL2 => ENA2,
	 EL3 => ENA3,
	 O1 => OO1,
	 O2 => OO2,
	 O3 => OO3
  );
  
  f: fulladder port map (
  ADD1 => TOPXOR,
  ADD2 => TOPAN2,
  ADD3 => ENAD,
  CARRYIN => CARRYi,
  CARRYOUT => CARRYo,
  SUM => TOPSUM
  );
  
  d : decoder port map (
  DEC1 => F0,
  DEC2 => F1,
  ODEC1 => ENA1,
  ODEC2 => ENA2,
  ODEC3 => ENA3,
  ODEC4 => ENAD
  );

TOPAN1 <= A AND ENA;
TOPAN2 <= B AND ENB;
TOPXOR <= INVA XOR TOPAN1;
OUTPUT <= OO1 OR OO2 OR OO3 OR TOPSUM;


end Behavioral;
