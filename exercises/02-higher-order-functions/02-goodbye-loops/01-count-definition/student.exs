defmodule Util do

  def count([], _), do: 0
  def count([ head | tail ], predicate) do
    if predicate.(head) do
      1 + count(tail, predicate)
    else
      0 + count(tail, predicate)
    end
  end

end
