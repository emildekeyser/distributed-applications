defmodule Grades do
  def all_passed?(grades) do
    Enum.all?(grades, fn x -> x >= 10 end)
  end
end
