defmodule NinetyNineElixirProblems.Solutions.Problem03 do
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
