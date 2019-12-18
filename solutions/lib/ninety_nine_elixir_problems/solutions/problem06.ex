defmodule NinetyNineElixirProblems.Solutions.Problem06 do
  def is_palindrome(word) when is_binary(word) do
    word
    |> String.graphemes()
    |> is_palindrome()
  end

  def is_palindrome(list) when is_list(list) do
    list |> Enum.reverse() |> Enum.zip(list) |> Enum.all?(fn {st, nd} -> st == nd end)
  end
end
