defmodule Butter do
    def echoer(parent_pid, counter) do
        receive do
          msg -> send(parent_pid, msg <> Integer.to_string(counter))
        end
        echoer(parent_pid, counter + 1)
    end
end

parent_pid = self()
echoer_pid = spawn( fn -> Butter.echoer(parent_pid, 0) end)

send(echoer_pid, "Bowling bal")
send(echoer_pid, "Bowling bal")
send(echoer_pid, "Bowling bal")
send(echoer_pid, "Bowling bal")

receive do
  msg -> IO.puts(msg)
end
receive do
  msg -> IO.puts(msg)
end
receive do
  msg -> IO.puts(msg)
end
receive do
  msg -> IO.puts(msg)
end
