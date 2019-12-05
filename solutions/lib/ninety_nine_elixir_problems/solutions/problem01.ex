defmodule NinetyNineElixirProblems.Solutions.Problem01 do
  def my_last([]), do: nil

  def my_last([head | []]), do: head

  def my_last([_ | tail]), do: my_last(tail)
end
