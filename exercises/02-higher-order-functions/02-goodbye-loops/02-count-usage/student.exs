defmodule Grades do

  def passed_percentage(grades) do
    passed = Enum.count(grades, fn x -> x >= 10 end)
    # div(passed, Enum.count(grades))
    Float.round(passed / Enum.count(grades), 2) * 100
  end

end
