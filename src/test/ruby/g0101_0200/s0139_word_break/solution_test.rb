require 'minitest/autorun'
require_relative '../../../../main/ruby/g0101_0200/s0139_word_break/solution'

class SolutionTest < Minitest::Test
  def test_word_break
    assert_equal true, word_break("leetcode", %w[leet code])
  end

  def test_word_break_2
    assert_equal true, word_break("applepenapple", %w[apple pen])
  end

  def test_word_break_3
    assert_equal false, word_break("catsandog", %w[cats dog sand and cat])
  end
end
