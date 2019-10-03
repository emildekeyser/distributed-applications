defmodule Functions do

  def nest(_, 0, x) do
    x
  end

  def nest(f, n, x) do
    f.(nest(f, n - 1, x))
  end

end
