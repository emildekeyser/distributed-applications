ExUnit.start()

file = System.get_env("DA_TESTFILE") || "student.exs"
Code.load_file(file, __DIR__)


defmodule Tests do
  use ExUnit.Case, async: true

  @data [
    %{
      prices: %{ a: 5 },
      basket: [ :a ],
      expected: 5
    },
    %{
      prices: %{ a: 5 },
      basket: [ :a, :a ],
      expected: 10
    },
    %{
      prices: %{ a: 5, b: 7 },
      basket: [ :a, :b ],
      expected: 5 + 7
    },
    %{
      prices: %{ a: 5, b: 1, c: 2 },
      basket: [ :a, :b, :c, :a ],
      expected: 5 + 1 + 2 + 1
    },
  ]

  for %{ prices: prices, basket: basket, expected: expected } <- @data do
    @prices prices
    @basket basket
    @expected expected

    test "prices=#{Kernel.inspect(prices)}, basket=#{Kernel.inspect(basket)} -> #{expected}" do
      assert Store.total_cost(@prices, @basket) === @expected
    end
  end
end
