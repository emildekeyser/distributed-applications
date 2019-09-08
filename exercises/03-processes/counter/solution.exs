defmodule Exercise do
  def create_counter() do
    spawn(fn () -> loop 0 end)
  end

  defp loop(n) do
    receive do
      :inc -> loop(n + 1)
      :dec -> loop(n - 1)
      :reset -> loop(0)
      { :get, pid } ->
        send(pid, n)
        loop(n)
    end
  end

  def increment(pid) do
    send(pid, :inc)
  end

  def decrement(pid) do
    send(pid, :dec)
  end

  def current(pid) do
    send(pid, {:get, self()})

    receive do
      n -> n
    end
  end

  def reset(pid) do
    send(pid, :reset)
  end
end
