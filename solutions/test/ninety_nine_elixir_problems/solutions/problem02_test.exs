defmodule NinetyNineElixirProblems.Solutions.Problem02Test do
  use ExUnit.Case
  alias NinetyNineElixirProblems.Solutions.Problem02

  describe "my_but_last/1" do
    test "should return nil when list is empty" do
      assert Problem02.my_but_last([]) == nil
    end

    test "should return the but last item on a list" do
      assert Problem02.my_but_last([:x, :y, :z]) == :y
    end

    test "should return nil when the list have only one item" do
      assert Problem02.my_but_last([:x]) == nil
    end
  end
end
