defmodule Util do
  def in_range?(ns, lower, upper) do
    ns |> Enum.all?(fn n -> lower <= n and n <= upper end)
  end
end
