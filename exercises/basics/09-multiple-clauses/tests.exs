ExUnit.start()

file = System.get_env("DA_TESTFILE") || "student.exs"
Code.load_file(file, __DIR__)


defmodule Tests do
  use ExUnit.Case, async: true

  data = [
    { 0, 0 },
    { 1, 1 },
    { -1, 1 },
    { 2, 2 },
    { -2, 2 },
  ]

  data |> Enum.each( fn {input, expected} ->
    test "Absolute value of #{input} should equal #{expected}" do
      assert Numbers.abs(unquote(input)) == unquote(expected)
    end
  end )
end
