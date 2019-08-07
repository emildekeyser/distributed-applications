defmodule Numbers do
  def abs(n) when n >= 0, do: n
  def abs(n) when n < 0, do: -n
end
