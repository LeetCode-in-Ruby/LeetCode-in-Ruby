require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0017_letter_combinations_of_a_phone_number/solution'

class SolutionTest < Minitest::Test
  def test_letter_combinations
    expected_result = ['ad', 'ae', 'af', 'bd', 'be', 'bf', 'cd', 'ce', 'cf']
    assert_equal expected_result, letter_combinations('23')
  end

  def test_letter_combinations2
    assert_equal [], letter_combinations('')
  end

  def test_letter_combinations3
    assert_equal ['a', 'b', 'c'], letter_combinations('2')
  end

  def test_letter_combinations4
    assert_equal ['g', 'h', 'i'], letter_combinations('4')
  end

  def test_letter_combinations5
    assert_equal ['j', 'k', 'l'], letter_combinations('5')
  end

  def test_letter_combinations6
    assert_equal ['m', 'n', 'o'], letter_combinations('6')
  end

  def test_letter_combinations7
    assert_equal ['p', 'q', 'r', 's'], letter_combinations('7')
  end

  def test_letter_combinations8
    assert_equal ['t', 'u', 'v'], letter_combinations('8')
  end

  def test_letter_combinations9
    assert_equal ['w', 'x', 'y', 'z'], letter_combinations('9')
  end
end
