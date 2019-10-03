defmodule Math do

  def simplify(x) when is_number(x) or is_atom(x), do: x

  def simplify({operator, x, y}) do
      case {operator, simplify(x), simplify(y)} do
          {:+, a, 0} -> a
          {:+, 0, b} -> b
          {:-, a, 0} -> a
          {:-, a, a} -> 0
          {:*, _, 0} -> 0
          {:*, 0, _} -> 0
          {:*, a, 1} -> a
          {:*, 1, b} -> b
          {:+, a, b} when is_number(a) and is_number(b) -> a + b
          {:-, a, b} when is_number(a) and is_number(b) -> a - b
          {:*, a, b} when is_number(a) and is_number(b) -> a * b
          {:/, a, b} when is_number(a) and is_number(b) -> a / b
          {a, b, c} -> {a, b, c}
      end
  end

end
