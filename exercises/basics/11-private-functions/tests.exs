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

  check that: Math.binomial(1, 0), is_equal_to: 1
  check that: Math.binomial(5, 0), is_equal_to: 1
  check that: Math.binomial(1, 1), is_equal_to: 1
  check that: Math.binomial(5, 1), is_equal_to: 5
  check that: Math.binomial(20, 1), is_equal_to: 20
  check that: Math.binomial(5, 2), is_equal_to: 10
  check that: Math.binomial(10, 2), is_equal_to: 45
  check that: Math.binomial(10, 5), is_equal_to: 252
  check that: Math.binomial(100, 50), is_equal_to: 100891344545564193334812497256
end
