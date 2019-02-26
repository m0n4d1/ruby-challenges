require 'test/unit'
require_relative '../04_sum_numbers'


class LargestNumberTest < Test::Unit::TestCase
  
  def test_sum_numbers
    assert_equal(3, sum_numbers([1,1,1]))
    assert_equal(117, sum_numbers([5,2,100,0,10]))
    assert_equal(290, sum_numbers([55,23,183,0,29]))

    assert_equal(-10, sum_numbers([-1,-2,-3,-4]))
    assert_equal(0, sum_numbers([-100,100]))
    assert_equal(7, sum_numbers([1.5,2.5,3]))
    assert_equal(0, sum_numbers([]))
    assert_equal(nil, sum_numbers("1,2,3"))
  end
end
