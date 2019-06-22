ExUnit.start()

file = System.get_env("DA_TESTFILE") || "student.exs"
Code.load_file(file, __DIR__)


defmodule Tests do
  use ExUnit.Case, async: true

  data = [
    { {0, :celsius}, :celsius, {0, :celsius} },
    { {10, :celsius}, :celsius, {10, :celsius} },
    { {0, :celsius}, :kelvin, {273.15, :kelvin} },
    { {0, :kelvin}, :celsius, {-273.15, :celsius} },
    { {100, :kelvin}, :kelvin, {100, :kelvin} },
  ]

  for { input, target, expected } <- data do
    @input input
    @target target
    @expected expected

    test "Converting #{Kernel.inspect(input)} to #{target}" do
      assert Temperature.convert(@input, @target) == @expected
    end
  end
end
