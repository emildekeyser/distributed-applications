# Assignment

In the last exercise, we focused on sending messages from child to parent.
We made this possible by having the process send its pid
to the child upon creation.

In this exercise, we investigate a second, more flexible, approach.
Say our application grows. We create many processes,
each of which is interested in writing things to screen.
They all want to go through our `print` process.

Right now, the `print` process always sends its "I'm done" responses
to the same process, the one that spawned the `print` process.
This won't do: we want to response to be send back
to the process who sent the message.

Remember how we said you could `send` any data you wanted?
Until now, you've simply sent over a string.
Why not change that to a tuple `{pid, message}`? Receiving such
a message can be achieved as follows:

```elixir
receive do
    { sender_pid, message } -> ...
end
```

## Task

We build further on the `print` exercise.
For now, we'll still work with only two processes: the parent process and the `print` child process.

* Remove the changes made in the previous exercise: turn `print` back into a nullary function. Update the `spawn` and the recursive `print` call.
* Change the `receive` expression so that it expects tuples instead of just strings.
* Update the N `send`s.
