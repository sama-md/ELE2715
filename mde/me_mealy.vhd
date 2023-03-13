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

entity mde_mealy is
    port (ck, rst, w : in std_logic;
                   z : out std_logic);
end mde_mealy;

architecture logica of mde_mealy is
  type state_type is (a, b);                           
  signal y : state_type;

begin
  process (rst, ck)
  begin
   if rst = '0' then 
     y <= a;
   elsif (ck'event and ck = '1') then
     case y is
       when a =>
         if w = '0' then y<=a;
         else            y<=b; end if;
       when b =>
         if w = '0' then y<=a;
         else            y<=b; end if;
     end case;
   end if;
  end process;

  process (y, w)
    begin
      case y is
        when a => z <= '0';
        when b => z <= w;
      end case;
  end process;
end logica;