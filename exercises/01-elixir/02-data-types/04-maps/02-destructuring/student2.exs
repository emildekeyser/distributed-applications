
defmodule Util do

  def follow(map, start) do
    case Map.fetch(map, start) do
      {:ok, x} -> [start | follow(map, x)]
      :error -> [start]
    end
  end

end
