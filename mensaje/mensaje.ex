# Enviar un mensaje de bienvenida en la empresa Once Ltda

defmodule Mensaje do
  # def define que se esta creand una funcion publica
  def main do
    "Mensaje de prueba 1" |> mostrar_mensaje()

    # Ejemplo de como importar un modulo - importar una funcion - importar funcion - importar modulo
    "Mensaje de prueba 2" |> Util.mostrar_mensaje2()

    "Ingrese el nombre del empleado" |> Util.ingresar_texto()
  end

  defp mostrar_mensaje(mensaje) do
    mensaje
    |> IO.puts()
  end
end

# Ejemplo de clase main
Mensaje.main()
