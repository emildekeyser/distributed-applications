ExUnit.start()

file = System.get_env("DA_TESTFILE") || "student.exs"
Code.load_file(file, __DIR__)


defmodule Tests do
  use ExUnit.Case, async: true

  data = [
    { [], 1 },
    { [0], 0 },
    { [1], 1 },
    { [1, 1], 1 },
    { [1, 2], 2 },
    { [1, 2, 3], 6 },
    { [1, 1, 1], 1 },
    { [5, 2, 7], 5 * 2 * 7 },
  ]

  for { input, expected } <- data do
    @input input
    @expected expected

    test "sum(#{Kernel.inspect(input)}) should be #{expected}" do
      assert Product.product(@input) == @expected
    end
  end
end
