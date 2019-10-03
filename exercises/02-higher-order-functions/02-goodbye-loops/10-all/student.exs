defmodule Grades do

  def all_passed?(grades) do
    Enum.all?(grades, fn(grade) -> grade == :na or grade >= 10 end)
  end

end
