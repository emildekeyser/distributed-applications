ExUnit.start()

file = System.get_env("DA_TESTFILE") || "student.exs"
Code.load_file(file, __DIR__)


defmodule Tests do
  use ExUnit.Case, async: true

  data = [
    { -273.15, 0 },
    { 0, 273.15 },
    { 10, 283.15 },
  ]

  for { celsius, kelvin } <- data do
    @celsius celsius
    @kelvin kelvin

    test "#{kelvin}K equals #{celsius}C" do
      assert Temperature.kelvin_to_celsius(@kelvin) == @celsius
    end

    test "#{celsius}C equals #{kelvin}K" do
      assert Temperature.celsius_to_kelvin(@celsius) == @kelvin
    end
  end
end
