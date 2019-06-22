defmodule Temperature do
  def convert({x, scale}, scale), do: {x, scale}
  def convert({x, :kelvin}, :celsius), do: {x - 273.15, :celsius}
  def convert({x, :celsius}, :kelvin), do: {x + 273.15, :kelvin}
end
