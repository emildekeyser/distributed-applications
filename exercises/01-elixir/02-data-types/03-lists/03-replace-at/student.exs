defmodule Util do

  def replace_at([_ | tail], 0, x), do: [x | tail]
  def replace_at([head | tail], i, x) do
    [head] ++ replace_at(tail, i - 1, x)
  end

end
