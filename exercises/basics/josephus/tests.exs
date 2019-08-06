ExUnit.start()

file = System.get_env("DA_TESTFILE") || "student.exs"
Code.load_file(file, __DIR__)

defmodule Tests do
  use ExUnit.Case, async: true

  data = [
    %{
      ns: [1, 2, 3, 4, 5],
      k: 1,
      expected: [1, 2, 3, 4, 5]
    },
    %{
      ns: [1, 2, 3, 4, 5],
      k: 2,
      expected: [2, 4, 1, 5, 3]
    },
    %{
      ns: [1, 2, 3, 4, 5, 6],
      k: 2,
      expected: [2, 4, 6, 3, 1, 5]
    },
    %{
      ns: [1, 2, 3, 4, 5],
      k: 4,
      expected: [4, 3, 5, 2, 1]
    },
  ]

  for %{ ns: ns, k: k, expected: expected } <- data do
    @ns ns
    @k k
    @expected expected

    test "permutation(#{inspect(@ns)}, #{@k}) -> #{inspect(expected)}" do
      assert Josephus.permutation(@ns, @k) == @expected
    end
  end
end
