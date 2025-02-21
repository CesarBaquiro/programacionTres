defmodule Calculadora do
  # Funcion para sumar
  def suma(a, b) do
    IO.puts("Suma entre #{a} y #{b}")
    a + b
  end

  # Funcion para restar
  def resta(a, b) do
    IO.puts("Resta entre #{a} y #{b}")
    a - b
  end

  # Ejemplo guardias - guardas
  def dividir(a, b) when a == 0 do
    IO.puts("Division entre #{a} y #{b}")
    IO.puts("No se puede dividir")
  end

  # Funcion para dividir
  def dividir(a, b) do
    IO.puts("Division entre #{a} y #{b}")
    a / b
  end

  # Funcion para multiplicar
  def multiplicar(a, b) do
    IO.puts("Multiplicacion entre #{a} y #{b}")
    a * b
  end
end

IO.inspect(Calculadora.suma(5, 3))
IO.inspect(Calculadora.resta(3, 4))
IO.inspect(Calculadora.dividir(2, 3))
# Division que falla usa el guarda
IO.inspect(Calculadora.dividir(0, 3))
IO.inspect(Calculadora.multiplicar(3, 4))
