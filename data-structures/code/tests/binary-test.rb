require "test/unit"
require_relative "../src/binary-search"

class TestBinary < Test::Unit::TestCase
  def test_should_return_the_correct_index_when_passed_a_valid_element
    mock_ordered_array = [1, 14, 65, 98, 212]
    result = binary_search(mock_ordered_array, 212)

    assert_equal result, 4
  end

  def test_should_return_negative_one_when_passed_an_invalid_element
    mock_ordered_array = [1, 14, 65, 98, 212]
    result = binary_search(mock_ordered_array, 43)

    assert_equal result, -1
  end
end
