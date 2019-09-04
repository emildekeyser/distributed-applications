# Assignment

## Task

Write a function `Grades.best_students(grades)` that returns a list of the students with the highest grades.
`grades` is a list containing tuples with structure `{ id, name, grade }`.

For example, say `grades` is equal to

```elixir
grades = [ { "r0000000", "Kit", 11 },
           { "r0000001", "Sophie", 14 },
           { "r0000002", "Charles", 17 },
           { "r0000002", "Emilia", 7 },
           { "r0000003", "Peter", 17 } ]
```

According to this list, Charles and Peter are the top students. `best_students` should therefore
return `[ "Charles", "Peter" ]`.

Rely on `Enum` functions to solve this exercise.
