defmodule Functions do

  def compose([], x) do
    x
  end

  def compose([head|tail], x) do
    compose(tail, head.(x))
  end

end
