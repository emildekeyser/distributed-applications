defmodule Josephus do
  def permutation(xs, k) do
    permutation(Stream.cycle(xs), k, length(xs))
  end

  def nth(xs, i) do
    xs |> Stream.drop(i-1) |> Stream.take(1) |> Enum.to_list |> Enum.at(0)
  end

  def permutation(_, _, 0), do: []
  def permutation(xs, k, i) do
    x = nth(xs, k)
    rest = xs |> Stream.drop(k - 1) |> Stream.drop_every(i)
    [x | permutation(rest, k, i-1)]
  end
end
