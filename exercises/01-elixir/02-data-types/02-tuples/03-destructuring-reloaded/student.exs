defmodule Cards do

  def higher?({c1, s}, {c2, s}, _) do
    to_number(c1) >= to_number(c1)
  end
  def higher?({_, s}, {_, ts}, ts) when s != ts, do: false
  def higher?(_, _, _), do: true

  defp to_number(card) when is_number(card), do: card
  defp to_number(:jack), do: 11
  defp to_number(:queen), do: 12
  defp to_number(:king), do: 13
  defp to_number(:ace), do: 14

end
