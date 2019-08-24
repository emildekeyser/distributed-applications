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

  check that: Greet.greet("Abel"), is_equal_to: "Hello, Abel!"
  check that: Greet.greet("John"), is_equal_to: "Hello, John!"
  check that: Greet.greet("Ruth"), is_equal_to: "Hello, Ruth!"
end
