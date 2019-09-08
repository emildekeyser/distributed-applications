defmodule Exercise do
  def print() do
    receive do
      {sender, message} ->
        IO.puts(message)
        send(sender, :success)
    end

    print()
  end
end

pid = spawn(&Exercise.print/0)

send(pid, {self(), "a"})
send(pid, {self(), "b"})
send(pid, {self(), "c"})
send(pid, {self(), "d"})

receive do
  _ -> nil
end

receive do
  _ -> nil
end

receive do
  _ -> nil
end

receive do
  _ -> nil
end
