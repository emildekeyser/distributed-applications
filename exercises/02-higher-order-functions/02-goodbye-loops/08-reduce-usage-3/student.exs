defmodule Math do

  def factorial(n) do
    Enum.reduce(1..n, 1, fn(x, acc) -> acc * x end)
  end

end
