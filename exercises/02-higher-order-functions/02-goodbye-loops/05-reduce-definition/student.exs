defmodule Util do

  def reduce([], acc, _), do: acc
  def reduce([x|xs], acc, f) do
    acc = f.(x, acc)
    reduce(xs, acc, f)
  end

end
