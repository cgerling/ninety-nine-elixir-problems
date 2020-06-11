defmodule NinetyNineElixirProblems.Solutions.Problem03 do
  @doc ~S"""
  Find the K'th element of a list

  ## Examples:
    
    iex> Problem03.element_at([:a, :b, :c, :d], 2)
    :c

    iex> Problem03.element_at([:a, :b, :c, :d], 5)
    nil

    iex> Problem03.element_at([:a, :b, :c, :d], -1)
    nil

    iex> Problem03.element_at([], 0)
    nil
  """
  def element_at([], _), do: nil
  def element_at(_, index) when index < 0, do: nil

  def element_at(list, index) do
    list
    |> Enum.count()
    |> Kernel.-(1)
    |> Kernel.>=(index)
    |> if(
      do: element_at(list, index, 0),
      else: nil
    )
  end

  defp element_at([head | _], index, count) when index == count, do: head

  defp element_at([_ | tail], index, count) do
    element_at(tail, index, count + 1)
  end
end
