defmodule Descuento do
  def aplicarDescuento(precio, categoria) do
    Descuento.incentivo(categoria) * precio
  end

  # Si es escribe como anonima genera un error al llamarla por fuera - defp incentivo(categoria) do

  def incentivo(categoria) do
    cond do
      categoria == :A -> 0.15
      categoria == :B -> 0.10
      categoria == :C -> 0.05
    end
  end
end

IO.inspect(Descuento.aplicarDescuento(10000, :A))
