# Assignment

To represent data, a programming language provides you with primitive values. In the case of Elixir, these are

* Integers
* Floating point numbers
* Atoms
* Functions

These are the "bricks". Now you need the "cement" to group them together.
OO languages such as C#, C++ and Java feature classes for this purpose.
Elixir has different, somewhat simpler (but also more limited) constructs.

One of these is the tuple. You can compare it to an array:
it can contain an arbitrary number of elements,
which you can access efficiently.

`{ 1, 2, 3 }` is a tuple of three long, containing the elements `1`, `2` and `3`.
You can put anything you want in a tuple, including other tuples.
The elements don't need to have matching types.

Tuple related functionality resides in its own module, unsurprisingly
named `Tuple`. Feel free to take a look at the [documentation](https://hexdocs.pm/elixir/Tuple.html) to get
an idea of what functionality is made available to you.

Note that because Elixir is a purely functional
language, you are not allowed to modify tuples.
Instead, you are supposed to create new tuples.
For example, the `Tuple.delete` function removes an element from a tuple,
but it does so by returning a new tuple with the specified element missing:

```elixir
iex(1)> x = {:a, :b, :c, :d, :e}
{:a, :b, :c, :d, :e}

iex(2)> y = Tuple.delete_at(x, 2)
{:a, :b, :d, :e}

iex(3)> x
{:a, :b, :c, :d, :e}

iex(4)> y
{:a, :b, :d, :e}
```

## Task

Write a function `Math.quotrem(x, y)` that returns a tuple containing

* the quotient (integer division) of `x` and `y`.
* the remainder (modulo) of the division of `x` by `y`.
