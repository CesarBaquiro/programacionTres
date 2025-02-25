defmodule EsPrimo do
  def esPrimo(numero) do
    esPrimo = true

    if numero < 2 do
      IO.puts("El número #{numero} no es primo")
    else
      for i <- 2..(numero - 1) do
        if rem(numero, i) == 0 do
          IO.puts(i)
          esPrimo = false
        end
      end

      if esPrimo == true do
        IO.puts("El número #{numero} es primo")
      else
        IO.puts("El número #{numero} no es primo")
      end
    end
  end
end

IO.inspect(EsPrimo.esPrimo(10))
# IO.inspect(EsPrimo.esPrimo(10))
