ExUnit.start()

file = System.get_env("DA_TESTFILE") || "student.exs"
Code.load_file(file, __DIR__)


defmodule Tests do
  use ExUnit.Case, async: true

  data = [
    { 1, 1, 2000, "1-1-2000" },
    { 2, 1, 2000, "2-1-2000" },
    { 2, 3, 2000, "2-3-2000" },
    { 2, 3, 2020, "2-3-2020" },
  ]

  for { day, month, year, expected } <- data do
    @day day
    @month month
    @year year
    @expected expected

    test "Formatting #{day}-#{month}-#{year}" do
      assert Date.format(@day, @month, @year) == @expected
    end
  end
end
