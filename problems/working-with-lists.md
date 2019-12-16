# Working with lists

## #01 (\*) - Find the last element of a list

Examples:
```elixir
> my_last([])
nil

> my_last([:x, :y, :z])
:z

> my_last([:x])
:x
```
[solution](../solutions/lib/ninety-nine-elixir-problems/solutions/problem01.ex)

## #02 (\*) - Find the last but one element of a list

Examples:
```elixir
> my_but_last([])
nil

> my_but_last([:x, :y, :x])
:y

> my_but_last([:x])
nil
```
[solution](../solutions/lib/ninety-nine-elixir-problems/solutions/problem02.ex)

## #03 (\*) - Find the K'th element of a list

Examples:
```elixir
> element_at([:a, :b, :c, :d], 2)
:c

> element_at([:a, :b, :c, :d], 5)
nil

> element_at([:a, :b, :c, :d], -1)
nil

> element_at([], 0)
nil
```
[solution](../solutions/lib/ninety-nine-elixir-problems/solutions/problem03.ex)

## #04 (\*) - Find the number of elements of a list

Examples:
```elixir
> my_length([1, 2, 3, 4])
4

> my_length([])
0
```
[solution](../solutions/lib/ninety-nine-elixir-problems/solutions/problem04.ex)

## #05 (\*) - Reverse a list

Examples:
```elixir
> my_reverse([])
[]

> my_reverse([2, 1, 3, 4])
[4, 3, 1, 2]
```

## #06 (\*) - Find out wheter a list is palindrome
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

## #07 (\*\*) - Flatten a nested list structure
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

## #08 (\*\*) - Eliminate consecutive duplicates of list elements
If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.

Examples:
```elixir
> compress([:a, :a, :a, :a, :b, :c, :c, :a, :a, :d, :e, :e, :e, :e])
[:a, :b, :c, :a, :d, :e]
```

## #09 (\*\*) - Pack consecutive duplicates of list elementes into sublists
If a list contains repeated elements they should be placed in separate sublists.

Examples:
```elixir
> pack([:a, :a, :a, :a, :b, :c, :c, :a, :a, :d, :e, :e, :e, :e])
[[:a, :a, :a, :a], [:b], [:c, :c], [:a, :a], [:d], [:e, :e, :e, :e]]
```

## #10 (\*) - Run-length encoding of a list
Use the result of problem [#09](#09---pack-consecutive-duplicates-of-list-elementes-into-sublists) to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of element E.

Examples:
```elixir
> encode([:a, :a, :a, :a, :b, :c, :c, :a, :a, :d, :e, :e, :e, :e])
[{4, :a}, {1, :b}, {2, :c}, {2, :a}, {1, :d}, {4, :e}]
```

