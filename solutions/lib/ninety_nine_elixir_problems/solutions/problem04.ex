defmodule NinetyNineElixirProblems.Solutions.Problem04 do
  def my_length([]), do: 0

  def my_length(list), do: count(list)

  defp count(list, count \\ 0)
  defp count([], count), do: count
  defp count([_ | tail], count), do: count(tail, count + 1)
end
