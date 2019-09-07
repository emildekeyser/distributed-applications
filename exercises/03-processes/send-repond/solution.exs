defmodule Exercise do
  def bar() do
    receive do
      sender_pid -> send(sender_pid, :success)
    end
  end

  def foo() do
    bar_pid = spawn(&bar/0)
    send(bar_pid, self())

    receive do
      message -> IO.puts(message)
    end
  end
end

Exercise.foo()
