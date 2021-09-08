library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Prescaler is
  port (
		clk : in std_logic;
		rst : in std_logic;
		CE  : out std_logic); --Será de 25MHz

end entity ; -- Prescaler

architecture rtl of Prescaler is
  
  constant Fin_cuenta   : integer :=99; --No se actualiza instantaneamente
  --constant Fin_cuenta   : integer :=1; --No se actualiza instantaneamente
  signal CE_i           : std_logic;
  signal contador_100Hz : unsigned(6 downto 0);


begin

 
    cnt_100Hz : process (clk) is  --Me crea una señal de frecuencia de 100Hz
        begin
        if (clk = '1' and clk'event) then
          if (rst = '1') then
            contador_100Hz <= (others => '0');
            CE_i <= '0';
          else
            if (contador_100Hz = Fin_cuenta) then
                  CE_i <= '1';
                  contador_100Hz <= (others => '0');
            else
                contador_100Hz <= contador_100Hz + 1;
                CE_i <= '0';
            end if;
          end if;
        end if;
    end process;

    CE <= CE_i;


end architecture ; -- rtl