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


  check that: Math.range_sum(0), is_equal_to: 0
  check that: Math.range_sum(1), is_equal_to: 1
  check that: Math.range_sum(2), is_equal_to: 3
  check that: Math.range_sum(5), is_equal_to: 15
  check that: Math.range_sum(100), is_equal_to: 5050

  check that: Math.range_sum(0, 0), is_equal_to: 0
  check that: Math.range_sum(1, 0), is_equal_to: 1
  check that: Math.range_sum(2, 0), is_equal_to: 3
  check that: Math.range_sum(3, 0), is_equal_to: 6
  check that: Math.range_sum(3, 1), is_equal_to: 6
  check that: Math.range_sum(3, 2), is_equal_to: 5
  check that: Math.range_sum(3, 3), is_equal_to: 3
  check that: Math.range_sum(100, 10), is_equal_to: 5005

  check that: Math.range_sum(0, 0, 1), is_equal_to: 0
  check that: Math.range_sum(1, 0, 1), is_equal_to: 1
  check that: Math.range_sum(2, 0, 1), is_equal_to: 3
  check that: Math.range_sum(3, 0, 1), is_equal_to: 6
  check that: Math.range_sum(3, 1, 1), is_equal_to: 6
  check that: Math.range_sum(3, 2, 1), is_equal_to: 5
  check that: Math.range_sum(3, 3, 1), is_equal_to: 3
  check that: Math.range_sum(100, 10, 1), is_equal_to: 5005
  check that: Math.range_sum(0, 0, 2), is_equal_to: 0
  check that: Math.range_sum(2, 0, 2), is_equal_to: 2
  check that: Math.range_sum(10, 0, 2), is_equal_to: 30
  check that: Math.range_sum(10, 0, 3), is_equal_to: 18
  check that: Math.range_sum(100, 50, 4), is_equal_to: 962
end
