defmodule Util do

  def frequencies(xs), do: frequencies(xs, %{})

  defp frequencies([], freq_map), do: freq_map
  defp frequencies([ head | tail], freq_map) do
    amount = Map.get(freq_map, head, 0) + 1
    frequencies(tail, Map.put(freq_map, head, amount))
  end

end
