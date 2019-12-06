defmodule NinetyNineElixirProblems.Solutions.Problem04Test do
  use ExUnit.Case
  alias NinetyNineElixirProblems.Solutions.Problem04

  describe "my_length/1" do
    test "should return the length of a list" do
      assert Problem04.my_length([1, 2, 3, 4]) == 4
    end

    test "should return zero for an empty list" do
      assert Problem04.my_length([]) == 0
    end
  end
end
