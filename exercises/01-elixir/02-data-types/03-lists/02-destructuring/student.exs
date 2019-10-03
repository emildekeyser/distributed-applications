defmodule Util do

  def first(xs) do
    [ head | _ ] = xs
    head
  end
  def second(xs) do
    [ _, head | _ ] = xs
    head
  end
  def third(xs) do
    [ _, _, head | _ ] = xs
    head
  end
  def last([ head | tail ]) when tail == [], do: head
  def last([ _ | tail ]), do: last(tail)
  def size([]), do: 0
  def size([ _ | tail ]), do: 1 + size(tail)

end
