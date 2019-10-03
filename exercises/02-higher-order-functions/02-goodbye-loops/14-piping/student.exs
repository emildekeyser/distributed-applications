defmodule Grades do
  def best_students(grades) do
    grades
    |> Enum.sort_by(fn {_, _, g} -> g end, fn(a, b) -> a >= b end)
    |> Enum.take(3)
    |> Enum.map(fn {_, n, _} -> n end)
  end
end
