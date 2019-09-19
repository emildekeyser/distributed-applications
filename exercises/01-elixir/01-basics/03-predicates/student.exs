defmodule Numbers do

  def even?(i) do
    rem(i, 2) == 0
  end

  def odd?(i) do
    not(even?(i))
  end

end
