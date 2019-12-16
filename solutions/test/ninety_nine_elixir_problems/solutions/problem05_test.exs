defmodule NinetyNineElixirProblems.Solutions.Problem05Test do
  use ExUnit.Case

  alias NinetyNineElixirProblems.Solutions.Problem05

  describe "my_reverse/1" do
    test "should return an empty list when an empty list is passed" do
      assert Problem05.my_reverse([]) == []
    end

    test "should reverse a list" do
      assert Problem05.my_reverse([2, 1, 3, 4]) == [4, 3, 1, 2]
    end
  end
end
