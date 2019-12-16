defmodule NinetyNineElixirProblems.Solutions.Problem05 do
  def my_reverse(list) do
    list |> reverse_list() |> List.flatten()
  end

  defp reverse_list([]), do: []

  defp reverse_list([head | tail]) do
    [reverse_list(tail) | [head]]
  end
end
