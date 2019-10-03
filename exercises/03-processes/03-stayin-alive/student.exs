defmodule Butter do

  def printer() do
    receive do
      msg -> IO.puts(msg)
    end
    printer()
  end

end

pid = spawn(&Butter.printer/0)

:timer.sleep(300)
send(pid, "I pass the butter")
:timer.sleep(300)
send(pid, "I pass the butter")
:timer.sleep(300)
send(pid, "I pass the butter")
:timer.sleep(300)
send(pid, "I pass the butter")
:timer.sleep(300)
send(pid, "I pass the butter")
