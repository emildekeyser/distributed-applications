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

  check that: abs(0), is_equal_to: 0
  check that: abs(1), is_equal_to: 1
  check that: abs(-1), is_equal_to: 1
  check that: abs(2), is_equal_to: 2
  check that: abs(-2), is_equal_to: 2
end
