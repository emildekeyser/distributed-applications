defmodule Util do
  def reduce([], acc, f), do: acc
  def reduce([x|xs], acc, f) do
    reduce(xs, f.(x, acc), f)
  end
end
