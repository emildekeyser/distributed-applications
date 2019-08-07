ExUnit.start()

file = System.get_env("DA_TESTFILE") || "student.exs"
Code.load_file(file, __DIR__)


defmodule Tests do
  use ExUnit.Case, async: true

  data = [
    { 1, 0, 1 },
    { 5, 0, 1 },
    { 1, 1, 1 },
    { 5, 1, 5 },
    { 20, 1, 20 },
    { 5, 2, 10 },
    { 10, 2, 45 },
    { 10, 5, 252 },
    { 100, 50, 100891344545564193334812497256 },
  ]

  for { n, k, expected } <- data do
    @n n
    @k k
    @expected expected

    test "Binomial(#{@n}, #{@k}) must be equal to #{@expected}" do
      assert Math.binomial(@n, @k) === @expected
    end
  end
end
