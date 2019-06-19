ExUnit.start()

file = System.get_env("DA_TESTFILE") || "student.exs"
Code.load_file(file, __DIR__)


defmodule Tests do
  use ExUnit.Case, async: true

  test "greeting John" do
    greeter = Exercise.create_greeter()

    send(greeter, {self(), "John"})

    receive do
      str -> assert str == "Hello John"
    end
  end

  test "greeting Peter" do
    greeter = Exercise.create_greeter()

    send(greeter, {self(), "Peter"})

    receive do
      str -> assert str == "Hello Peter"
    end
  end
end
