defmodule Butter do

  def printer() do
    receive do
      msg -> IO.puts(msg)
    end
  end

end

pid = spawn(&Butter.printer/0)
:timer.sleep(1000)
send(pid, "I pass the butter")
