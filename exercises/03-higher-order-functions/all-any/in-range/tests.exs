defmodule Setup do
  @script "shared.exs"

  def setup(directory \\ ".") do
    path = Path.join(directory, @script)

    if File.exists?(path) do
      Code.require_file(path)
      Shared.setup(__DIR__)
    else
      setup(Path.join(directory, ".."))
    end
  end
end

Setup.setup


defmodule Tests do
  use ExUnit.Case, async: true
  import Shared

  check that: Util.in_range?([], 0, 10), is_equal_to: true
  check that: Util.in_range?([1], 0, 10), is_equal_to: true
  check that: Util.in_range?([9], 0, 10), is_equal_to: true
  check that: Util.in_range?([1, 2, 3, 4, 5], 0, 10), is_equal_to: true
  check that: Util.in_range?([0], 0, 10), is_equal_to: true
  check that: Util.in_range?([10], 0, 10), is_equal_to: true
  check that: Util.in_range?([5,6,7,8], 5, 8), is_equal_to: true

  check that: Util.in_range?([9], 5, 8), is_equal_to: false
  check that: Util.in_range?([4], 5, 8), is_equal_to: false
  check that: Util.in_range?([10,11,5,14], 10, 15), is_equal_to: false
  check that: Util.in_range?([-1], 0, 50), is_equal_to: false
end
