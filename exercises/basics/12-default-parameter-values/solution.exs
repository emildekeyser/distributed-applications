defmodule Math do
  def range_sum(b, a \\ 0, step \\ 1) do
    if b >= a do
      a + range_sum(b, a + step, step)
    else
      0
    end
  end
end
