defmodule Numbers do
  def sign(n) when n > 0, do: 1
  def sign(0), do: 0
  def sign(n) when n < 0, do: -1
end
