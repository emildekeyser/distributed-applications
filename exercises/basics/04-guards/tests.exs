ExUnit.start()

file = System.get_env("DA_TESTFILE") || "student.exs"
Code.load_file(file, __DIR__)


defmodule Tests do
  use ExUnit.Case, async: true

  data = [
    { 0, true },
    { 2, true },
    { 4, true },
    { 100, true },
    { 1, false },
    { 3, false },
    { 5, false },
    { 101, false },
  ]

  for { input, expected } <- data do
    @input input
    @expected expected

    test "Checking if #{input} is even" do
      assert Numbers.even?(@input) == @expected
    end
  end
end
