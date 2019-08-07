ExUnit.start()

file = System.get_env("DA_TESTFILE") || "student.exs"
Code.load_file(file, __DIR__)


defmodule Tests do
  use ExUnit.Case, async: true

  data = [
    { 0, 0 },
    { 1, 1 },
    { 2, 1 },
    { 3, 2 },
    { 4, 3 },
    { 5, 5 },
    { 6, 8 },
    { 7, 13 },
  ]

  for { input, expected } <- data do
    @input input
    @expected expected

    test "fib(#{input}) must be #{expected}" do
      assert Fibonacci.fib(@input) === @expected
    end
  end
end
