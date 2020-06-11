defmodule NinetyNineElixirProblems.Solutions.Problem07 do
  @doc ~S"""
  Flatten a nested list structure

  ## Examples:

    iex> Problem07.flatten([])
    []

    iex> Problem07.flatten([:a, :b, :c])
    [:a, :b, :c]

    iex> Problem07.flatten([:a, [:b, [:c, [:d, :e], :f], [:g, :h]]])
    [:a, :b, :c, :d, :e, :f, :g, :h]

    iex> Problem07.flatten([[:a, :b, :c], [:d, [:e]]])
    [:a, :b, :c, :d, :e]

  """
  def flatten([]), do: []

  def flatten(list) when is_list(list),
    do: list |> flat_list() |> Enum.reverse()

  defp flat_list(list, flattened \\ [])

  defp flat_list([], flattened), do: flattened

  defp flat_list([list | tail], flattened) when is_list(list) do
    flattened = flat_list(list, flattened)

    flat_list(tail, flattened)
  end

  defp flat_list([item | tail], flattened),
    do: flat_list(tail, [item | flattened])
end
