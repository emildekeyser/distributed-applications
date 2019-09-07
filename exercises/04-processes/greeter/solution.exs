defmodule Exercise do
  def create_greeter() do
    spawn(&loop/0)
  end

  defp loop() do
    receive do
      {receiver, name} ->
        send(receiver, "Hello #{name}")
        loop()
    end
  end
end
