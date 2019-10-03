defmodule Util do
  def filter([], _), do: []
  def filter([head | tail], predicate) do
    if predicate.(head) do
      [head | filter(tail, predicate)]
    else
      filter(tail, predicate)
    end
  end
end
