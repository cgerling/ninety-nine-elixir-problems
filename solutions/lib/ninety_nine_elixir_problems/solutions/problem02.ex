defmodule NinetyNineElixirProblems.Solutions.Problem02 do
  def my_but_last([]), do: nil

  def my_but_last([head | [_]]), do: head

  def my_but_last([_ | tail]), do: my_but_last(tail)
end
