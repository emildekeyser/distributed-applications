ExUnit.start()

file = System.get_env("DA_TESTFILE") || "student.exs"
Code.load_file(file, __DIR__)


defmodule Tests do
  use ExUnit.Case, async: true

  data = [
    { 0, 0 },
    { {:+, 4, 6}, 10 },
    { {:+, {:+, 2, 3}, 6}, 11 },
    { {:+, {:-, 5, 3}, 6}, 8 },
    { {:+, {:-, 5, 3}, {:*, 4, 5}}, 22 },
    { {:+, {:-, 5, {:/, 8, 2}}, {:*, 4, 5}}, 21 },
    { :x, :x },
    { {:+, :x, 0}, :x },
    { {:+, 0, :x}, :x },
    { {:+, {:+, :y, 0}, :x}, {:+, :y, :x} },
    { {:-, :x, :x}, 0 },
    { {:-, :x, {:-, :x, :x}}, :x },
    { {:*, :x, {:-, :x, :x}}, 0 },
    { {:*, 0, :x}, 0 },
    { {:*, {:/, :x, :x}, :x}, :x },
    { {:/, :y, 1}, :y },
    { {:+, {:*, 1, :z}, {:*, :x, 0}}, :z },
    { {:+, {:/, :x, :y}, {:*, :a, :b}}, {:+, {:/, :x, :y}, {:*, :a, :b}} },
  ]

  for { input, expected } <- data do
    @input input
    @expected expected

    test "simplify(#{Kernel.inspect(input)}) should give #{Kernel.inspect(expected)}" do
      assert Exercise.simplify(@input) == @expected
    end
  end
end
