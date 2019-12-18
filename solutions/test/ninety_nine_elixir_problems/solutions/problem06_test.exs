defmodule NinetyNineElixirProblems.Solutions.Problem06Test do
  use ExUnit.Case
  alias NinetyNineElixirProblems.Solutions.Problem06

  describe "is_palindrome/1" do
    test "should return false for non-palindrome list of numbers" do
      refute Problem06.is_palindrome([1, 2, 3])
    end

    test "should return true for palindrome list of numbers" do
      assert Problem06.is_palindrome([1, 2, 4, 8, 16, 8, 4, 2, 1])
    end

    test "shoud return false for palindrome string" do
      refute Problem06.is_palindrome("ninetynine")
    end

    test "should return true for palindrome string" do
      assert Problem06.is_palindrome("madamimadam")
    end
  end
end
