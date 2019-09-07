defmodule Exercise do
  def print() do
    receive do
      message -> IO.puts(message)
    end
  end
end

pid = spawn(&Exercise.say/0)

send(pid, "Hello")
