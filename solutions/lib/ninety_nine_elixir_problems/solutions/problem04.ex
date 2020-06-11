defmodule NinetyNineElixirProblems.Solutions.Problem04 do
  @doc ~S"""
  Find the number of elements of a list

  ## Examples:

    iex> Problem04.size([1, 2, 3, 4])
    4

    iex> Problem04.size([])
    0
  """
  def size([]), do: 0
  def size(list), do: count(list)

  defp count(list, count \\ 0)
  defp count([], count), do: count
  defp count([_ | tail], count), do: count(tail, count + 1)
end
