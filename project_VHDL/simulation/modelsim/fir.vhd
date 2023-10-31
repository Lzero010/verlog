package eight_bit is
subtype fbyte is integer range 0 to 1023;
type array_byte is array(0 to 3)of fbyte;
end eight_bit;
library work;
use work.eight_bit.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
entity fir is
port(
    clk:in std_logic;
    x:in fbyte;
    y:out fbyte
    );
end fir;
architecture behave of fir is
signal t:array_byte;
begin
process(clk)
 begin
   if(clk'event and clk='1')then
     y<=630*t(1)/1000+630*t(2)/1000-273*t(0)/1000-273*t(3)/1000;--2*t(1)+t(1)+t(1)/2+t(1)/4+2*t(2)+t(2)+t(2)/2+t(2)/4-t(3)-t(0);
     for i in 3 downto 1 loop
       t(i)<=t(i-1);
     end loop;
    t(0)<=x;
   end if;
 end process;
end behave;
