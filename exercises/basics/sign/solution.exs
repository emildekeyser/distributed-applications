defmodule Sign do
  def sign(x) when x < 0, do: -1
  def sign(x) when x == 0, do: 0
  def sign(x) when x > 0, do: 1
end
