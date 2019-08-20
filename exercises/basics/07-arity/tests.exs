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

  check that: Max.maximum(1, 2), is_equal_to: 2
  check that: Max.maximum(3, 2), is_equal_to: 3
  check that: Max.maximum(1, 5, 2), is_equal_to: 5

  check that: Max.maximum(7, 5, 2), is_equal_to: 7
  check that: Max.maximum(7, 5, 9), is_equal_to: 9
  check that: Max.maximum(7, 10, 9), is_equal_to: 10

  check that: Max.maximum(3, 2, 1, 0), is_equal_to: 3
  check that: Max.maximum(3, 4, 1, 0), is_equal_to: 4
  check that: Max.maximum(3, 4, 7, 0), is_equal_to: 7
  check that: Max.maximum(3, 4, 7, 9), is_equal_to: 9
end
