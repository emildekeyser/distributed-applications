defp child_ai() do
  IO.puts("Are were there yet?")

  receive do
    :arrived -> IO.puts("Finally!")
  after
    0 -> child_ai()
  end
end

child = spawn(&child_ai/0)
drive()
send(child_ai, :arrived)
