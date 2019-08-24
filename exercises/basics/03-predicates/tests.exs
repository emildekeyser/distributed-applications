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

  check that: Util.odd?(1), is_equal_to: true
  check that: Util.odd?(5), is_equal_to: true
  check that: Util.odd?(7), is_equal_to: true
  check that: Util.odd?(19), is_equal_to: true
  check that: Util.odd?(-19), is_equal_to: true
  check that: Util.odd?(0), is_equal_to: false
  check that: Util.odd?(2), is_equal_to: false
  check that: Util.odd?(4), is_equal_to: false
  check that: Util.odd?(80), is_equal_to: false
  check that: Util.odd?(-78), is_equal_to: false
  check that: Util.even?(0), is_equal_to: true
  check that: Util.even?(2), is_equal_to: true
  check that: Util.even?(8), is_equal_to: true
  check that: Util.even?(16), is_equal_to: true
  check that: Util.even?(-16), is_equal_to: true
  check that: Util.even?(1), is_equal_to: false
  check that: Util.even?(5), is_equal_to: false
  check that: Util.even?(-5), is_equal_to: false
end
