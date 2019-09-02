defmodule Functions do
  def compose(f, g) do
    fn x -> g.(f.(x)) end
  end
end
