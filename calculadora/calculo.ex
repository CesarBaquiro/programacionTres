# Ejemplo funciones anonimas - funciones que reciben una funcion
defmodule Calculo do
  # Se envia por parametro una funcion cualquiera
  def elevar(funcion) do
    # En este caso la funccion va usar como argumento el numero 8
    funcion.(8)
  end

  def restar(fun) do
    fun.(3, 7)
  end
end

# Al llamar la funcion elevar y usar la funcion anonima que tiene dentro, toma el valor y lo multiplica por el mismo
IO.puts(Calculo.elevar(fn x -> x * x end))

# Restando usando restar
IO.puts(Calculo.restar(fn a, b -> a - b end))

# Restando enviando la funcion de manera anonima
resta = fn a, b -> a - b end
IO.puts(Calculo.restar(resta))
