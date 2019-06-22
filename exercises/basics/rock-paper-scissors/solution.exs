defmodule RPS do
  def stronger?(:rock, :scissors), do: true
  def stronger?(:scissors, :paper), do: true
  def stronger?(:paper, :rock), do: true
  def stronger?(x, y) when is_atom(x) and is_atom(y), do: false

  def winner(x, y) do
    cond do
      stronger?(x, y) -> 1
      stronger?(y, x) -> 2
      true            -> 0
    end
  end
end
