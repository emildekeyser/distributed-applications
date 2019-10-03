defmodule Util do

  def frequencies(xs) do
    Enum.reduce(xs, %{}, fn(x, acc) -> Map.put(acc, x, Map.get(acc, x, 0) + 1) end)
  end

end
