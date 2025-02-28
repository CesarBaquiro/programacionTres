defmodule Calculadora do
  def suma() do
    a = Util.ingresar_numeros()
    b = Util.ingresar_numeros()

    IO.puts("Se va a sumar #{a} y #{b}")
    a + b
  end
end

IO.inspect(Calculadora.suma())
