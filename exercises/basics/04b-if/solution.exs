defmodule Numbers do
  def abs(n) when is_number(n) do
    if n >= 0 do
      n
    else
      -n
    end
  end
end
