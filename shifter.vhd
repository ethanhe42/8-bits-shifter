--8位移位寄存器

LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY shifter IS
	PORT (
	       data_in   : IN STD_LOGIC_VECTOR(7 DOWNTO 0);  --输入的数据
	       n         : IN STD_LOGIC_VECTOR(2 DOWNTO 0);  --移位的数量
	       dir       : IN STD_LOGIC;                     --移动的方向 0:左  1:右
		   rst       : IN STD_LOGIC;                     --reset
	       kind      : IN STD_LOGIC_VECTOR(1 DOWNTO 0);  --移动类型  00:算术移  01:逻辑移  10:循环移
	       clock     : IN BIT;                        --手动时钟PULSE
           data_out  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)  --移位的结果
	     );
END shifter;
	     
ARCHITECTURE behav of shifter IS
signal qtemp: std_logic_vector(7 downto 0);
  BEGIN
    PROCESS (data_in, n, dir, rst, kind)  
      VARIABLE	x,y : STD_LOGIC_VECTOR(7 DOWNTO 0);
      VARIABLE	ctrl0,ctrl1,ctrl2 : STD_LOGIC_VECTOR (3 DOWNTO 0);
      BEGIN
	 	if rst = '1' then
   		qtemp <= data_in;
        ELSIF (clock'EVENT AND clock = '1')THEN
        --产生控制向量ctrl
        ctrl0 := n(0) & dir & kind(1) & kind(0);
        ctrl1 := n(1) & dir & kind(1) & kind(0);
        ctrl2 := n(2) & dir & kind(1) & kind(0);

--		qtemp <= qtemp + 1;
               
        CASE ctrl0 IS
          WHEN "0000" | "0001" | "0010" | "0100" | "0101" | "0110"  =>  x := qtemp;  --n=0时不移动
          WHEN "1000" => x := qtemp(6 DOWNTO 0) & qtemp(0);                        --算术左移1位 
          WHEN "1001" => x := qtemp(6 DOWNTO 0) & '0';                               --逻辑左移1位 
          WHEN "1010" => x := qtemp(6 DOWNTO 0) & qtemp(7);                        --循环左移1位
          

          WHEN "1100" => x := data_in(7) & data_in(7 DOWNTO 1);                        --算术右移1位 
          WHEN "1101" => x := '0' & data_in(7 DOWNTO 1);                               --逻辑右移1位 
          WHEN "1110" => x := data_in(0) & data_in(7 DOWNTO 1);                        --循环右移1位
          WHEN others => null;
        END CASE;
       qtemp <= x;
        
        CASE ctrl1 IS
          WHEN "0000" | "0001" | "0010" | "0100" | "0101" | "0110"  =>  y := x;        --n=0时不移动
          WHEN "1000" => y := qtemp(5 DOWNTO 0) & qtemp(0) & qtemp(0);                             --算术左移2位 
          WHEN "1001" => y := qtemp(5 DOWNTO 0) & "00";                                    --逻辑左移2位 
          WHEN "1010" => y := qtemp(5 DOWNTO 0) & qtemp(7 DOWNTO 6);                           --循环左移2位
          
          WHEN "1100" => y := qtemp(7) & qtemp(7) & qtemp(7 DOWNTO 2);                             --算术右移2位 
          WHEN "1101" => y := "00" & qtemp(7 DOWNTO 2);                                    --逻辑右移2位 
          WHEN "1110" => y := qtemp(1 DOWNTO 0) & qtemp(7 DOWNTO 2);                           --循环右移2位
          WHEN others => null;
        END CASE;
		qtemp <= y;        

        CASE ctrl2 IS
          WHEN "0000" | "0001" | "0010" | "0100" | "0101" | "0110"  => data_out <= y;  --n=0时不移动
          WHEN "1000" => data_out <= y(3 DOWNTO 0) & y(0) & y(0) & y(0) & y(0);        --算术左移4位 
          WHEN "1001" => data_out <= y(3 DOWNTO 0) & "0000";                           --逻辑左移4位 
          
          WHEN "1010" | "1110" => data_out <= y(3 DOWNTO 0) & y(7 DOWNTO 4);           --循环左(右)移4位
          WHEN "1100" => data_out <= y(7) & y(7) & y(7) & y(7) & y(7 DOWNTO 4);        --算术右移4位 
          WHEN "1101" => data_out <= "0000" & y(7 DOWNTO 4);                           --逻辑右移4位          
          WHEN others => null;
        END CASE;       
       END IF;
      END PROCESS;
  END behav;      
            