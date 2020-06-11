defmodule NinetyNineElixirProblems.Solutions.Problem02 do
  @doc ~S"""
  Finds the last but one element of a list

  ## Examples:
    
    iex> Problem02.but_last([])
    nil

    iex> Problem02.but_last([:x, :y, :z])
    :y

    iex> Problem02.but_last([:x])
    nil

  """
  def but_last([]), do: nil
  def but_last([head | [_]]), do: head
  def but_last([_ | tail]), do: but_last(tail)
end
