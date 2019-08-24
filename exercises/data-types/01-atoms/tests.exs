ExUnit.start()

file = System.get_env("DA_TESTFILE") || "student.exs"
Code.load_file(file, __DIR__)


defmodule Tests do
  use ExUnit.Case, async: true

  data = [
    { :ace, :ace, false },
    { 2, :ace, false },
    { :ace, 2, true },
    { 4, 8, false },
    { 5, 2, true },
    { :jack, :queen, false },
    { :queen, :jack, true },
    { :jack, :king, false },
    { :king, :jack, true },
    { :king, :queen, true },
    { :queen, :king, false },
    { :king, :ace, false },
    { :ace, :king, true },
    { :jack, 10, true },
    { 5, :queen, false },
  ]

  for { x, y, expected } <- data do
    @x x
    @y y
    @expected expected

    test "higher?(#{@x}, #{@y}) -> #{@expected}" do
      assert Cards.higher?(@x, @y) === @expected
    end
  end
end
