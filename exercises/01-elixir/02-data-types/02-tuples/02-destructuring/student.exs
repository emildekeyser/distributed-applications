def same_suit(card1, card2) do
  {_, suit1} = card1
  {_, suit2} = card2
  same(suit1, suit2)
end

def same(:hearts, :hearts), do: true
def same(:clubs, :clubs), do: true
def same(:spades, :spades), do: true
def same(:diamonds, :diamonds), do: true
def same(_, _), do: false
defmodule Cards do
  def same_suit?({_, s}, {_, s}), do: true
  def same_suit?(_, _), do: false
end
