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

  check that: Util.odd?(1), is_equal_to: true
  check that: Util.odd?(5), is_equal_to: true
  check that: Util.odd?(7), is_equal_to: true
  check that: Util.odd?(19), is_equal_to: true
  check that: Util.odd?(-19), is_equal_to: true
  check that: Util.odd?(0), is_equal_to: false
  check that: Util.odd?(2), is_equal_to: false
  check that: Util.odd?(4), is_equal_to: false
  check that: Util.odd?(80), is_equal_to: false
  check that: Util.odd?(-78), is_equal_to: false
  check that: Util.even?(0), is_equal_to: true
  check that: Util.even?(2), is_equal_to: true
  check that: Util.even?(8), is_equal_to: true
  check that: Util.even?(16), is_equal_to: true
  check that: Util.even?(-16), is_equal_to: true
  check that: Util.even?(1), is_equal_to: false
  check that: Util.even?(5), is_equal_to: false
  check that: Util.even?(-5), is_equal_to: false
end
