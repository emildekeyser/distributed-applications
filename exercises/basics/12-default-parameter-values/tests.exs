ExUnit.start()

file = System.get_env("DA_TESTFILE") || "student.exs"
Code.load_file(file, __DIR__)


defmodule Tests do
  use ExUnit.Case, async: true

  data2 = [
    { 0, 0 },
    { 1, 1 },
    { 2, 3 },
    { 5, 15 },
    { 100, 5050 },
  ]

  data3 = [
    { 0, 0, 0 },
    { 1, 0, 1 },
    { 2, 0, 3 },
    { 3, 0, 6 },
    { 3, 1, 6 },
    { 3, 2, 5 },
    { 3, 3, 3 },
    { 100, 10, 5005 },
  ]

  data4 = [
    { 0, 0, 2, 0 },
    { 2, 0, 2, 2 },
    { 10, 0, 2, 30 },
    { 10, 0, 2, 30 },
    { 10, 0, 3, 18 },
    { 100, 50, 4, 962 },
  ]

  for { a, expected } <- data2 do
    @a a
    @expected expected

    test "range_sum(#{@a}) must equal #{@expected}" do
      assert Math.range_sum(@a) === @expected
    end
  end

  for { a, b, expected } <- data3 do
    @a a
    @b b
    @expected expected

    test "range_sum(#{@a}, #{@b}) must equal #{@expected}" do
      assert Math.range_sum(@a, @b) === @expected
    end
  end

  for { a, b, delta, expected } <- data3 do
    @a a
    @b b
    @delta delta
    @expected expected

    test "range_sum(#{@a}, #{@b}, #{@delta}) must equal #{@expected}" do
      assert Math.range_sum(@a, @b, @delta) === @expected
    end
  end
end
