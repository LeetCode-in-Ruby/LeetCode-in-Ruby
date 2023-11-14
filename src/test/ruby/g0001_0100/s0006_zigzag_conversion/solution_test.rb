require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0006_zigzag_conversion/solution'

class SolutionTest < Minitest::Test
  def test_convert
    assert_equal 'PAHNAPLSIIGYIR', convert('PAYPALISHIRING', 3)
  end

  def test_convert2
    assert_equal 'PINALSIGYAHRPI', convert('PAYPALISHIRING', 4)
  end
end
