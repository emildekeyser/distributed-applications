ExUnit.start()

file = System.get_env("DA_TESTFILE") || "student.exs"
Code.load_file(file, __DIR__)


defmodule Tests do
  use ExUnit.Case, async: true

  @data [
    { :rock, :rock, false },
    { :rock, :paper, false },
    { :rock, :scissors, true },
    { :paper, :rock, true },
    { :paper, :paper, false },
    { :paper, :scissors, false },
    { :scissors, :rock, false },
    { :scissors, :paper, true },
    { :scissors, :scissors, false },
  ]

  for { x, y, expected } <- @data do
    @x x
    @y y
    @expected expected

    test "stronger?(#{x}, #{y}) should return #{expected}" do
      assert RPS.stronger?(@x, @y) == @expected
    end
  end

  @data [
    { :rock, :rock, 0 },
    { :rock, :paper, 2 },
    { :rock, :scissors, 1 },
    { :paper, :rock, 1 },
    { :paper, :paper, 0 },
    { :paper, :scissors, 2 },
    { :scissors, :rock, 2 },
    { :scissors, :paper, 1 },
    { :scissors, :scissors, 0 },
  ]

  for { x, y, expected } <- @data do
    @x x
    @y y
    @expected expected

    test "winner(#{x}, #{y}) should return #{expected}" do
      assert RPS.winner(@x, @y) == @expected
    end
  end
end
