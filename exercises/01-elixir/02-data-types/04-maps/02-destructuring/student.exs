defmodule Util do

  def follow(map, start) do
    x = map[start]
    if x  == nil do
      [start]
    else
      [start | follow(map, x)]
    end
  end

end
