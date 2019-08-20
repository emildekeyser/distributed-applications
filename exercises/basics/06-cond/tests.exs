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

  check that: Sign.sign(1), is_equal_to: 1
  check that: Sign.sign(2), is_equal_to: 1
  check that: Sign.sign(5), is_equal_to: 1
  check that: Sign.sign(100), is_equal_to: 1
  check that: Sign.sign(0), is_equal_to: 0
  check that: Sign.sign(-1), is_equal_to: -1
  check that: Sign.sign(-2), is_equal_to: -1
  check that: Sign.sign(-5), is_equal_to: -1
  check that: Sign.sign(-111), is_equal_to: -1
end
