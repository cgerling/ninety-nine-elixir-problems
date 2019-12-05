defmodule NinetyNineElixirProblems.Solutions.Problem01Test do
  use ExUnit.Case

  alias NinetyNineElixirProblems.Solutions.Problem01

  describe "my_last/1" do
    test "should return nil when the list is empty" do
      assert Problem01.my_last([]) == nil
    end

    test "should return the last item on a list" do
      assert Problem01.my_last([:x, :y, :z]) == :z
    end
  end
end
