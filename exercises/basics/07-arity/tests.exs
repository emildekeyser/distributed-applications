ExUnit.start()

file = System.get_env("DA_TESTFILE") || "student.exs"
Code.load_file(file, __DIR__)


defmodule Tests do
  use ExUnit.Case, async: true

  data2 = [
    { 1, 2, 2 },
    { 2, 1, 2 },
    { 1, 1, 1 },
    { 4, 3, 4 },
    { 1, 8, 8 },
  ]

  for { a, b, expected } <- data2 do
    @a a
    @b b
    @expected expected

    test "maximum(#{@a}, #{@b}) should equal #{@expected}" do
      assert Max.maximum(@a, @b) == @expected
    end
  end
end
