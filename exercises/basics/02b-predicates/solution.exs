defmodule Util do
  def odd?(x) do
    rem(x, 2) != 0
  end

  def even?(x) do
    rem(x, 2) == 0
  end
end
