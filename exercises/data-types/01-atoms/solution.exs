defmodule Cards do
  defp value(k) when is_number(k), do: k
  defp value(:jack), do: 11
  defp value(:queen), do: 12
  defp value(:king), do: 13
  defp value(:ace), do: 14

  def higher?(x, y), do: value(x) > value(y)
end
