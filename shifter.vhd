--8λ��λ�Ĵ���

LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY shifter IS
	PORT (
	       data_in   : IN STD_LOGIC_VECTOR(7 DOWNTO 0);  --���������
	       n         : IN STD_LOGIC_VECTOR(2 DOWNTO 0);  --��λ������
	       dir       : IN STD_LOGIC;                     --�ƶ��ķ��� 0:��  1:��
		   rst       : IN STD_LOGIC;                     --reset
	       kind      : IN STD_LOGIC_VECTOR(1 DOWNTO 0);  --�ƶ�����  00:������  01:�߼���  10:ѭ����
	       clock     : IN BIT;                        --�ֶ�ʱ��PULSE
           data_out  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)  --��λ�Ľ��
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
        --������������ctrl
        ctrl0 := n(0) & dir & kind(1) & kind(0);
        ctrl1 := n(1) & dir & kind(1) & kind(0);
        ctrl2 := n(2) & dir & kind(1) & kind(0);

--		qtemp <= qtemp + 1;
               
        CASE ctrl0 IS
          WHEN "0000" | "0001" | "0010" | "0100" | "0101" | "0110"  =>  x := qtemp;  --n=0ʱ���ƶ�
          WHEN "1000" => x := qtemp(6 DOWNTO 0) & qtemp(0);                        --��������1λ 
          WHEN "1001" => x := qtemp(6 DOWNTO 0) & '0';                               --�߼�����1λ 
          WHEN "1010" => x := qtemp(6 DOWNTO 0) & qtemp(7);                        --ѭ������1λ
          

          WHEN "1100" => x := data_in(7) & data_in(7 DOWNTO 1);                        --��������1λ 
          WHEN "1101" => x := '0' & data_in(7 DOWNTO 1);                               --�߼�����1λ 
          WHEN "1110" => x := data_in(0) & data_in(7 DOWNTO 1);                        --ѭ������1λ
          WHEN others => null;
        END CASE;
       qtemp <= x;
        
        CASE ctrl1 IS
          WHEN "0000" | "0001" | "0010" | "0100" | "0101" | "0110"  =>  y := x;        --n=0ʱ���ƶ�
          WHEN "1000" => y := qtemp(5 DOWNTO 0) & qtemp(0) & qtemp(0);                             --��������2λ 
          WHEN "1001" => y := qtemp(5 DOWNTO 0) & "00";                                    --�߼�����2λ 
          WHEN "1010" => y := qtemp(5 DOWNTO 0) & qtemp(7 DOWNTO 6);                           --ѭ������2λ
          
          WHEN "1100" => y := qtemp(7) & qtemp(7) & qtemp(7 DOWNTO 2);                             --��������2λ 
          WHEN "1101" => y := "00" & qtemp(7 DOWNTO 2);                                    --�߼�����2λ 
          WHEN "1110" => y := qtemp(1 DOWNTO 0) & qtemp(7 DOWNTO 2);                           --ѭ������2λ
          WHEN others => null;
        END CASE;
		qtemp <= y;        

        CASE ctrl2 IS
          WHEN "0000" | "0001" | "0010" | "0100" | "0101" | "0110"  => data_out <= y;  --n=0ʱ���ƶ�
          WHEN "1000" => data_out <= y(3 DOWNTO 0) & y(0) & y(0) & y(0) & y(0);        --��������4λ 
          WHEN "1001" => data_out <= y(3 DOWNTO 0) & "0000";                           --�߼�����4λ 
          
          WHEN "1010" | "1110" => data_out <= y(3 DOWNTO 0) & y(7 DOWNTO 4);           --ѭ����(��)��4λ
          WHEN "1100" => data_out <= y(7) & y(7) & y(7) & y(7) & y(7 DOWNTO 4);        --��������4λ 
          WHEN "1101" => data_out <= "0000" & y(7 DOWNTO 4);                           --�߼�����4λ          
          WHEN others => null;
        END CASE;       
       END IF;
      END PROCESS;
  END behav;      
            