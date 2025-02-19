defmodule Util do
  def mostrar_mensaje2(mensaje) do
    IO.puts("#{mensaje}")
  end

  def ingresar_texto(mensaje) do
    mensaje
    |> IO.gets("Ingrese el nombre: ")
  end

  def generar_mensaje(nombre) do
    IO.puts("Hola #{nombre}")
  end
end
