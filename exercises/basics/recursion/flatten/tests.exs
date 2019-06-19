ExUnit.start()

file = System.get_env("DA_TESTFILE") || "student.exs"
Code.load_file(file, __DIR__)


defmodule Tests do
  use ExUnit.Case, async: true

  data = [
    { [], [] },
    { [1], [1] },
    { [1, 2], [1, 2] },
    { [[]], [] },
    { [[1]], [1] },
    { [[1, 2]], [1, 2] },
    { [[1, 2], 3], [1, 2, 3] },
    { [[1, 2], 3, [4]], [1, 2, 3, 4] },
    { [1, [4], 2, [[6, 5, 4]]], [1, 4, 2, 6, 5, 4] },
  ]

  for { input, expected } <- data do
    @input input
    @expected expected

    test "flattening #{Kernel.inspect(input)} should give #{Kernel.inspect(expected)}" do
      assert Exercise.flatten(@input) == @expected
    end
  end
end
