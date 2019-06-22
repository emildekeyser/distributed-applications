ExUnit.start()

file = System.get_env("DA_TESTFILE") || "student.exs"
Code.load_file(file, __DIR__)


defmodule Tests do
  use ExUnit.Case, async: true

  data = [
    { "Abel", "Hello, Abel!" },
    { "John", "Hello, John!" },
    { "Ruth", "Hello, Ruth!" },
  ]

  for { input, expected } <- data do
    @input input
    @expected expected

    test "Greeting #{input}" do
      assert Greet.greet(@input) == @expected
    end
  end
end
