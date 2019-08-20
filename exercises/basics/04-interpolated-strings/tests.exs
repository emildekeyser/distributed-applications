ExUnit.start()

file = System.get_env("DA_TESTFILE") || "student.exs"
Code.load_file(file, __DIR__)


defmodule Aux do
  defmacro check(that: block, is_equal_to: expected) do
    str = Macro.to_string(block)
    quote do
      test "#{unquote(str)} should be equal to #{unquote(expected)}" do
        assert unquote(block) == unquote(expected)
      end
    end
  end
end


defmodule Tests do
  use ExUnit.Case, async: true
  import Aux

  check that: Date.format(1, 1, 2000), is_equal_to: "1-1-2000"
  check that: Date.format(2, 1, 2000), is_equal_to: "2-1-2000"
  check that: Date.format(1, 2, 2000), is_equal_to: "1-2-2000"
  check that: Date.format(1, 1, 2002), is_equal_to: "1-1-2002"
end
