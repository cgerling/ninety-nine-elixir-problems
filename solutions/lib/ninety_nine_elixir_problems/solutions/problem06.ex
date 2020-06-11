defmodule NinetyNineElixirProblems.Solutions.Problem06 do
  @doc ~S"""
  Check if a list or string are palindrome (can be read forward and backward)

  ## Examples:

    iex> Problem06.is_palindrome?([1, 2, 4, 8, 16, 8, 4, 2, 1])
    true

    iex> Problem06.is_palindrome?("detartrated")
    true

    iex> Problem06.is_palindrome?([1, 2, 3])
    false

    iex> Problem06.is_palindrome?("ninetynine")
    false

  """
  def is_palindrome?(word) when is_binary(word) do
    word
    |> String.graphemes()
    |> is_palindrome?()
  end

  def is_palindrome?(list) when is_list(list) do
    list |> Enum.reverse() |> Enum.zip(list) |> Enum.all?(fn {st, nd} -> st == nd end)
  end
end
