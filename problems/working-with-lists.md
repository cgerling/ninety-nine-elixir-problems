# Working with lists

## #01 - Find the last element of a list

★ [(solution)](../solutions/lib/ninety-nine-elixir-problems/solutions/problem01.ex)

Examples:
```elixir
iex> Problem01.last([])
nil

iex> Problem01.last([:x, :y, :z])
:z

iex> Problem01.last([:x])
:x
```

## #02 - Find the last but one element of a list

★ [(solution)](../solutions/lib/ninety-nine-elixir-problems/solutions/problem02.ex)

Examples:
```elixir
iex> Problem02.but_last([])
nil

iex> Problem02.but_last([:x, :y, :x])
:y

iex> Problem02.but_last([:x])
nil
```

## #03 - Find the K'th element of a list

★ [(solution)](../solutions/lib/ninety-nine-elixir-problems/solutions/problem03.ex)

Examples:
```elixir
iex> Problem03.element_at([:a, :b, :c, :d], 2)
:c

iex> Problem03.element_at([:a, :b, :c, :d], 5)
nil

iex> Problem03.element_at([:a, :b, :c, :d], -1)
nil

iex> Problem03.element_at([], 0)
nil
```

## #04 - Find the number of elements of a list

★ [(solution)](../solutions/lib/ninety-nine-elixir-problems/solutions/problem04.ex)

Examples:
```elixir
iex> Problem04.size([1, 2, 3, 4])
4

iex> Problem04.size([])
0
```

## #05 - Reverse a list

★ [(solution)](../solutions/lib/ninety-nine-elixir-problems/solutions/problem05.ex)

Examples:
```elixir
iex> Problem05.reverse([])
[]

iex> Problem05.reverse([2, 1, 3, 4])
[4, 3, 1, 2]
```

## #06 - Find out wheter a list is palindrome

★ [(solution)](../solutions/lib/ninety-nine-elixir-problems/solutions/problem06.ex)

A palindrome can be read forward or backword.

Examples:
```elixir
iex> Problem06.is_palindrome?([1, 2, 4, 8, 16, 8, 4, 2, 1])
true

iex> Problem06.is_palindrome?("detartrated")
true

iex> Problem06.is_palindrome?([1, 2, 3])
false

iex> Problem06.is_palindrome?("ninetynine")
true
```

## #07 - Flatten a nested list structure

★★

Transform a list, possibly holding lists as elements into a `flat` list by replacing each list with its elements (recursively).

Examples:
```elixir
iex> Problem07.flatten([])
[]

iex> Problem07.flaten([:a, :b, :c])
[:a, :b, :c]

iex> Problem07.flatten([:a, [:b, [:c, :d], :e]])
[:a, :b, :c, :d, :e]
```

## #08 - Eliminate consecutive duplicates of list elements

★★

If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.

Examples:
```elixir
iex> Problem08.compress([:a, :a, :a, :a, :b, :c, :c, :a, :a, :d, :e, :e, :e, :e])
[:a, :b, :c, :a, :d, :e]
```

## #09 - Pack consecutive duplicates of list elementes into sublists

★★

If a list contains repeated elements they should be placed in separate sublists.

Examples:
```elixir
iex> Problem09.pack([:a, :a, :a, :a, :b, :c, :c, :a, :a, :d, :e, :e, :e, :e])
[[:a, :a, :a, :a], [:b], [:c, :c], [:a, :a], [:d], [:e, :e, :e, :e]]
```

## #10 - Run-length encoding of a list

★

Use the result of problem [#09](#09---pack-consecutive-duplicates-of-list-elementes-into-sublists) to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of element E.

Examples:
```elixir
iex> Problem10.encode([:a, :a, :a, :a, :b, :c, :c, :a, :a, :d, :e, :e, :e, :e])
[{4, :a}, {1, :b}, {2, :c}, {2, :a}, {1, :d}, {4, :e}]
```

