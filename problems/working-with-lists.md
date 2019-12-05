# Working with lists

## #01 - Find the last element of a list

Examples:
```elixir
> my_last([1, 2, 3, 4])
4

> my_last([:x, :y, :z])
:z
```

## #02 - Find the last but one element of a list

Examples:
```elixir
> my_but_last([1, 2, 3, 4])
3

> my_but_last([1..99])
98
```

## #03 - Find the K'th element of a list

Examples:
```elixir
> element_at([1, 2, 3, 4], 2)
2

> element_at([:a, :b, :c, :d, :e], 4)
:e
```

## #04 - Find the number of elements of a list

Examples:
```elixir
> my_length([1, 2, 3, 4])
4

> my_length([123, 456, 789])
3
```

## #05 - Reverse a list

Examples:
```elixir
> my_reverse([1, 2, 3, 4])
[4, 3, 2, 1]
```

## #06 - Find out wheter a list is palindrome
A palindrome can be read forward or backword.

Examples:
```elixir
> is_palindrome([1, 2, 3])
false

> is_palindrome([1, 2, 4, 8, 16, 8, 4, 2, 1])
true

> is_palindrome("ninetynine")

> is_palindrome("madamimadam")
true
```

## #07 - Flatten a nested list structure
Transform a list, possibly holding lists as elements into a `flat` list by replacing each list with its elements (recursively).

Examples:
```elixir
> my_flatten([])
[]

> my_flaten([:a, :b, :c])
[1, 2, 3]

> my_flatten([:a, [:b, [:c, :d], :e]])
[:a, :b, :c, :d, :e]
```

## #08 - Eliminate consecutive duplicates of list elements
If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.

Examples:
```elixir
> compress([:a, :a, :a, :a, :b, :c, :c, :a, :a, :d, :e, :e, :e, :e])
[:a, :b, :c, :a, :d, :e]
```

## #09 - Pack consecutive duplicates of list elementes into sublists
If a list contains repeated elements they should be placed in separate sublists.

Examples:
```elixir
> pack([:a, :a, :a, :a, :b, :c, :c, :a, :a, :d, :e, :e, :e, :e])
[[:a, :a, :a, :a], [:b], [:c, :c], [:a, :a], [:d], [:e, :e, :e, :e]]
```

## #10 - Run-length encoding of a list
Use the result of problem [#09](#09---pack-consecutive-duplicates-of-list-elementes-into-sublists) to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of element E.

Examples:
```elixir
> encode([:a, :a, :a, :a, :b, :c, :c, :a, :a, :d, :e, :e, :e, :e])
[{4, :a}, {1, :b}, {2, :c}, {2, :a}, {1, :d}, {4, :e}]
```

