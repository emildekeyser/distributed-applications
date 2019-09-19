defmodule Numbers do

  def maximum(x1, x2) do
    if x1 > x2, do: x1, else: x2
  end

  def maximum(x1, x2, x3) do
    maximum(maximum(x1, x2), x3)
  end

  def maximum(x1, x2, x3, x4) do
    maximum(maximum(x1, x2, x3), x4)
  end

end
