Prism.languages.vhdl = {
	'comment': /--.+/,
	// support for all logic vectors
	'vhdl-vectors': {
		'pattern': /\b[oxb]"[\da-f_]+"|"[01uxzwlh-]+"/i,
		'alias': 'number'
	},
```vhdl
-- Файл: example.vhd

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND_Gate is
    port (
        A, B : in STD_LOGIC;
        Y    : out STD_LOGIC
    );
end entity AND_Gate;

architecture Behavioral of AND_Gate is
begin
    Y <= A and B;
end architecture Behavioral;
```
