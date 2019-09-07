ExUnit.start()

file = System.get_env("DA_TESTFILE") || "student.exs"
Code.load_file(file, __DIR__)


defmodule Tests do
  use ExUnit.Case, async: true

  test "initial value" do
    counter = Exercise.create_counter()

    assert Exercise.current(counter) == 0
  end

  test "incrementing counter" do
    counter = Exercise.create_counter()

    assert Exercise.current(counter) == 0
    Exercise.increment(counter)
    assert Exercise.current(counter) == 1
  end

  test "decrementing counter" do
    counter = Exercise.create_counter()

    assert Exercise.current(counter) == 0
    Exercise.decrement(counter)
    assert Exercise.current(counter) == -1
  end

  test "resetting counter" do
    counter = Exercise.create_counter()
    Exercise.increment(counter)
    Exercise.increment(counter)
    Exercise.increment(counter)

    assert Exercise.current(counter) == 3
    Exercise.reset(counter)
    assert Exercise.current(counter) == 0
  end
end
