defmodule Math do

  def sqrt(x) do
    Functions.fixedpoint(fn y -> y - ((y*y - x) / (2 * x)) end, x)
  end

end

# defmodule Functions do
#   def fixedpoint(f, x) do
#     y = f.(x)
#     if x == y, do: x, else: fixedpoint(f, y)
#   end
# end
