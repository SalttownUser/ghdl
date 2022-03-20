library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tc2 is
    port (
        state   : in std_ulogic;
        class   : in std_ulogic;
        o       : out std_ulogic_vector(3 downto 0)
        );
end entity tc2;

architecture behaviour of tc2 is
    signal misc_sel      : std_ulogic_vector(3 downto 0);
begin
    testcase_0: process(all)
    begin
        misc_sel <= "0000";

        case state is
           when '0' =>
                misc_sel <= "0111";
           when '1' =>
             misc_sel(3) <= '1';
           when others =>
        end case;

        o <= misc_sel;
    end process;
end architecture behaviour;
