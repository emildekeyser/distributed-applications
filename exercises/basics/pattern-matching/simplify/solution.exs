defmodule Exercise do
  def simplify(x) when is_number(x) or is_atom(x), do: x
  def simplify({operator, x, y}) when is_atom(operator) do
    case {operator, simplify(x), simplify(y)} do
      {:+, 0, x} -> x
      {:+, x, 0} -> x
      {:+, x, y} when is_number(x) and is_number(y) -> x + y
      {:-, x, 0} -> x
      {:-, x, x} -> 0
      {:-, x, y} when is_number(x) and is_number(y) -> x - y
      {:*, _, 0} -> 0
      {:*, 0, _} -> 0
      {:*, x, 1} -> x
      {:*, 1, x} -> x
      {:*, x, y} when is_number(x) and is_number(y) -> x * y
      {:/, x, 1} -> x
      {:/, x, x} when x != 0 -> 1
      {:/, x, y} when is_number(x) and is_number(y) -> x / y
      {:+, x, x} -> {:x, 2, x}
      {op, x, y} -> {op, x, y}
    end
  end
end
