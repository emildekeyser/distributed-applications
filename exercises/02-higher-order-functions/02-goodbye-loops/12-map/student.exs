defmodule Grades do

  def to_code(grades) do
    Enum.join(Enum.map(grades, fn x -> cond do
      0 <= x and x <= 7 -> "C"
      x in 8..9 -> "B"
      x >= 10 -> "A"
    end
    end))
  end

end
