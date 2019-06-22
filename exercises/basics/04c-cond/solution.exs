defmodule Numbers do
  def sign(n) when is_number(term) do
    cond do
      n > 0 -> 1
      n < 0 -> -1
      true  -> 0
    end
  end
end
