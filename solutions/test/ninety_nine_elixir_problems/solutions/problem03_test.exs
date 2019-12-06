defmodule NinetyNineElixirProblems.Solutions.Problem03Test do
  use ExUnit.Case
  alias NinetyNineElixirProblems.Solutions.Problem03

  describe "element_at/2" do
    @list [:a, :b, :c, :d]

    test "should retrieve second value on the list element" do
      assert :c == Problem03.element_at(@list, 2)
    end

    test "should retrive nil when the index specified is bigger than the list length" do
      assert nil == Problem03.element_at(@list, 5)
    end

    test "should retrieve nil when the index specified is lesser than zero" do
      assert nil == Problem03.element_at(@list, -1)
    end

    test "should retrieve nil when the list is empty" do
      assert nil == Problem03.element_at([], 0)
    end
  end
end
