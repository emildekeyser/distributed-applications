defmodule Math do

  def evaluate(x) when is_number(x), do: x
  def evaluate({:+, a, b}), do: evaluate(a) + evaluate(b)
  def evaluate({:-, a, b}), do: evaluate(a) - evaluate(b)
  def evaluate({:*, a, b}), do: evaluate(a) * evaluate(b)
  def evaluate({:/, a, b}), do: evaluate(a) / evaluate(b)

end
