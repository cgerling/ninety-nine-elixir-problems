defmodule NinetyNineElixirProblems.Solutions.Problem05 do
  @doc ~S"""
  Reverse a list

  ## Examples:
    
    iex> Problem05.reverse([])
    []

    iex> Problem05.reverse([2, 1, 3, 4])
    [4, 3, 1, 2]

  """
  def reverse(list), do: list |> reverse_list() |> List.flatten()

  defp reverse_list([]), do: []
  defp reverse_list([head | tail]), do: [reverse_list(tail) | [head]]
end
