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

  check(that: Temperature.kelvin_to_celsius(0), is_equal_to: -273.15)
  check(that: Temperature.kelvin_to_celsius(273.15), is_equal_to: 0)
  check(that: Temperature.kelvin_to_celsius(283.15), is_equal_to: 10)

  check(that: Temperature.celsius_to_kelvin(-273.15), is_equal_to: 0)
  check(that: Temperature.celsius_to_kelvin(0), is_equal_to: 273.15)
  check(that: Temperature.celsius_to_kelvin(10), is_equal_to: 283.15)
end
