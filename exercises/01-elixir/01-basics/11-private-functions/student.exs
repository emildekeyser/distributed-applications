defmodule Math do

  def binomial(n, k) do
    div(factorial(n), factorial(k) * factorial(n - k))
  end

  defp factorial(0), do: 1
  defp factorial(n) do
    n * factorial(n-1)
  end

end
