defmodule Exercise do
  defp range(a, b) when a < b, do: [a | range(a + 1, b)]
  defp range(_, _), do: []

  def prime?(n) do
    n > 1 and range(2, n) |> Enum.all?(fn k -> rem(n, k) != 0 end)
  end
end
