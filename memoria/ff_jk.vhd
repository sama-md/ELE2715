--
-- Copyright (C) 2023 Samaherni M. D.
-- Laboratory of Automation, Control and Instrumentation (LACI)
-- Federal University of Rio Grande do Norte (UFRN)
-- 
-- This file is part of ELE2715 project (https://github.com/sama-md/ELE2715/). 
-- It is subject to the license terms in the LICENSE file found in the top-level 
-- directory of this distribution. 
--
-- Licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 
-- 4.0 International License;
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--  (EN)  https://creativecommons.org/licenses/by-nc-nd/4.0/legalcode
--  (PT)  https://creativecommons.org/licenses/by-nc-nd/4.0/legalcode.pt
--
-- Unless otherwise separately undertaken by the Licensor, to the extent possible, 
-- the Licensor offers the Licensed Material "as-is" and "as-available", and makes
-- no representations or warranties of any kind concerning the Licensed Material, 
-- whether express, implied, statutory, or other.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--

library ieee;
use ieee.std_logic_1164.all;

entity ffjk is
   port (ck, clr, set, j, k : in  std_logic;
                          q : out std_logic);
end ffjk;

architecture logica of ffjk is

signal qS : std_logic;

begin
   process(ck, clr, set)
   begin
      if    (set = '0')            then qS <= '1';
      elsif (clr = '0')            then qS <= '0';
      elsif (ck'event and ck ='1') then 
     	   if    j='1' and k = '1' then qS <= not qS;
     	   elsif j='1' and k = '0' then qS <= '1';  
     	   elsif j='0' and k = '1' then qS <= '0';
         end if;   
      end if;   
   end process;   
   q <= qS;
end logica;
