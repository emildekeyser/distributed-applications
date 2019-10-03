defmodule Butter do

  def oracle(parent_pid) do
    receive do
      msg -> case rem(String.length(msg), 3) do
        0 -> send(parent_pid, :yes)
        1 -> send(parent_pid, :maybe)
        2 -> send(parent_pid, :no)
      end
    end
    oracle(parent_pid)
  end

end

parent_pid = self()
oracle_pid = spawn(fn -> Butter.oracle(parent_pid) end)

send(oracle_pid, "aaa")
send(oracle_pid, "aaaa")
send(oracle_pid, "aaaaa")

receive do
  msg -> IO.puts(msg)
end
receive do
  msg -> IO.puts(msg)
end
receive do
  msg -> IO.puts(msg)
end
