defmodule Cake do

  def rock(), do: 0
  def paper(), do: 0
  def scissors(), do: 0

  def beats?(x, y) when is_function(x) and is_function(y) do
    namex = Keyword.get(Function.info(x), :name)
    namey = Keyword.get(Function.info(y), :name)
    
  end

end
