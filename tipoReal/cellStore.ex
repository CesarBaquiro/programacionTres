defmodule EntradaReales do
  def main do
    valor_producto =
      "Ingrese valor del producto: "
      |> Util2.ingresar(:entero)

    valor_entregado =
      "Ingrese el porcentaje de descuento: "
      |> Util2.ingresar(:real)

    valor_descuento = calcular_valor_descuento(valor_producto, porcentaje_descuento)

    valor_final = calcular_valor_final(valor_producto, valor_descuento)

    generar_mensaje(valor_descuento, valor_final)
    |> Util2.mostrar_mensaje()
  end

  defp calcular_valor_descuento(valor_producto, porcentaje_descuento) do
    valor_producto * porcentaje_descuento
  end

  defp calcular_valor_final(valor_producto, valor_descuento) do
    valor_producto - valor_descuento
  end

  defp generar_mensaje(valor_descuento, valor_final) do
    valor_descuento = valor_descuento |> Float.round(1)

    valor_final = valor_final |> Float.round(1)

    "Valor de descuento de $#{valor_descuento} y el valor final $# {valor_final}"
  end

  def ingresar(mensaje, :real) do
    try do
      mensaje
      |> Util2.ingresar(:texto)
      |> String.to_float()
    rescue
      ArgumentError ->
        "Error, se espera que ingrese un número real\n"
        |> mostrar_error()

        mensaje
        |> ingresar(:real)
    end
  end
end

EntradaReales.main()
