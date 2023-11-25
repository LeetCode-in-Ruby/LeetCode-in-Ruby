require 'minitest/autorun'
require_relative '../../../../main/ruby/g0201_0300/s0207_course_schedule/solution'

class SolutionTest < Minitest::Test
  def test_can_finish
    assert_equal true, can_finish(2, [[1, 0]])
  end

  def test_can_finish2
    assert_equal false, can_finish(2, [[1, 0], [0, 1]])
  end
end
