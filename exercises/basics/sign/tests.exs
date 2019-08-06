ExUnit.start()

file = System.get_env("DA_TESTFILE") || "student.exs"
Code.load_file(file, __DIR__)

defmodule Tests do
  use ExUnit.Case, async: true

  data = [
    { 1, 1 },
    { 2, 1 },
    { 50, 1 },
    { 0, 0 },
    { -4, -1 },
    { -8, -1 },
    { -11, -1 },
  ]

  for { n, expected } <- data do
    @n n
    @expected expected

    test "sign(#{@n}) should return #{expected}" do
      assert Sign.sign(@n) === @expected
    end
  end
end
