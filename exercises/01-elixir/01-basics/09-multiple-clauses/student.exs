defmodule Numbers do

  def abs(i) when is_number(i) and i < 0, do: -i
  def abs(i) when is_number(i), do: i

end
