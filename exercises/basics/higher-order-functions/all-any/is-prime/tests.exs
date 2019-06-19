ExUnit.start()

file = System.get_env("DA_TESTFILE") || "student.exs"
Code.load_file(file, __DIR__)


defmodule Tests do
  use ExUnit.Case, async: true

  for k <- [2, 3, 5, 7, 11, 97, 541] do
    @k k

    test "#{k} is prime" do
      assert Exercise.prime?(@k)
    end
  end

  for k <- [0, 1, 4, 6, 8, 10, 100] do
    @k k

    test "#{k} is not prime" do
      assert !Exercise.prime?(@k)
    end
  end
end
