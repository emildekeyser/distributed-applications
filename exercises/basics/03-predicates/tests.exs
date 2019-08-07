ExUnit.start()

file = System.get_env("DA_TESTFILE") || "student.exs"
Code.load_file(file, __DIR__)


defmodule Tests do
  use ExUnit.Case, async: true

  odd_numbers = [ 1, 3, 5, 99, -15 ]
  even_numbers = [ 0, 2, 4, 6, 100, -40 ]

  for n <- odd_numbers do
    @n n

    test "#{@n} is odd" do
      assert Util.odd?(@n)
    end

    test "#{@n} is not even" do
      assert not Util.even?(@n)
    end
  end

  for n <- even_numbers do
    @n n

    test "#{@n} is not odd" do
      assert not Util.odd?(@n)
    end

    test "#{@n} is even" do
      assert Util.even?(@n)
    end
  end
end
