# Assignment

In the previous exercise, we made a magnificent
concurrent printer process: send it a string
and it will magically appear on the screen.

However, it's got a rather limiting flaw:
it's single use. If we send the printer
process a second message, nothing happens.
It appears that the printer process
simply ends after having received
and printed its message. Other messages
will never be retrieved for the message queue,
destined to remain ignored until the end of time.
Or until the application terminates, whichever comes first.

So, how do we make the printer process a bit more
persistent? After having received a message,
it should simply wait for another message,
and then another, and so on. In other words,
we need an infinite loop:

```elixir
while true do
  receive do
    message -> IO.puts(message)
  end
end
```

It should come as no surprise, however, that Elixir lacks `while` loop.
That's an imperative feature, which Elixir eschews.

Fortunately, recursion comes to save the day!
An infinite loop is created by simply having the function call itself.

```elixir
def infinite_loop() do
    infinite_loop()
end
```

## Task

Update the `print` function from the previous exercise so that
the process remains alive. Send multiple strings to it
and check that they're all being written to the screen.
