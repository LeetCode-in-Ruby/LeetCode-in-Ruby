require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0049_group_anagrams/solution'

class SolutionTest < Minitest::Test
  def test_group_anagrams
    expected = [['eat', 'tea', 'ate'], ['tan', 'nat'], ['bat']]
    actual = group_anagrams(['eat', 'tea', 'tan', 'ate', 'nat', 'bat'])
    assert_equal expected, actual
  end

  def test_group_anagrams2
    expected = [['']]
    actual = group_anagrams([''])
    assert_equal expected, actual
  end

  def test_group_anagrams3
    expected = [['a']]
    actual = group_anagrams(['a'])
    assert_equal expected, actual
  end
end
