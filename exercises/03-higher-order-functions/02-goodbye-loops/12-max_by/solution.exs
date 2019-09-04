defmodule Grades do
  def best_students(grades) do
    Enum.map(Enum.max_by(grades, fn {_, _, g} -> g end), fn {_, name, _} -> name end)
  end
end
