defmodule Numbers do

  def even?(i) when is_integer(i) do
    rem(i, 2) == 0
  end

  def odd?(i) when is_integer(i) do
    rem(i, 2) != 0
  end

end
