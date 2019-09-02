# Assignment

Write a function `Functions.fixedpoint(f, x)` that repeatedly applies the given unary function `f` on `x`
until a *fixed point* is reached, i.e., that it finds a `y` such that `y == f(y)`.

For example, take the square root function and start at 10.

* Taking the square root of 10 gives 3.16
* Taking the square root of 3.16 gives 1.78
* Taking the square root of 1.78 gives 1.33
* Taking the square root of 1.33 gives 1.15
* ...
* Taking the square root of 1.000004 gives 1.000002

After an infinite number of steps, this will converge to 1.
The tests will of course not lead to infinite series.
