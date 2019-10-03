defmodule Cards do

  def higher?(x, y) do
    to_number(x) > to_number(y)
  end

  defp to_number(card) when is_number(card), do: card
  defp to_number(card) when is_atom(card) do
    case card do
      :jack -> 11
      :queen -> 12
      :king -> 13
      :ace -> 14
    end
  end

end
