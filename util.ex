defmodule Util do
  def ingresar_numeros() do
    IO.gets("Ingrese el número: ")
    |> String.trim()
    |> String.to_integer()
  end
end
