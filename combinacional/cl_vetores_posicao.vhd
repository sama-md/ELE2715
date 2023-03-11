--
-- Copyright (C) 2023 Samaherni M. D.
-- Universidade Federal do Rio Grande do Norte (UFRN)
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

entity ckt is
    port (a,b: in  std_logic_vector(0 to 3);
            x: out std_logic_vector(0 to 3));
end ckt;

architecture log of ckt is

begin
  x(3) <= a(3) and b(3);
  x(2) <= a(2) and b(2);
  x(1) <= a(1) and b(1);
  x(0) <= a(0) and b(0);
end log;