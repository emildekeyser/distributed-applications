defmodule Grades do

  def best_student(grades) do
    elem(Enum.max_by(grades, fn grade -> elem(grade, 2) end), 1)
  end

end
