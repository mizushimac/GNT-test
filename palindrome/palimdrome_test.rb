require './palimdrome'
require 'test/unit'

class PalimdromeTest < Test::Unit::TestCase

  def setup; end

  def teardown; end

  def test_palimdrome_failure_argument
    test_str = Array.new(0)

    assert_raise( ArgumentError.new('Inputted is not String')){ palimdrome?(test_str) }
  end

  def test_palimdrome_failure
    test_str = "1234"

    assert_equal(false, palimdrome?(test_str), "[#{test_str}] is not palimdrome")
  end

  def test_palimdrome_pass_alphabet
    test_str = "1234321"

    assert(palimdrome?(test_str), "[#{test_str}] is palimdrome")
  end

  def test_palimdrome_pass_hiragana
    test_str = "あいうえおえういあ"

    assert(palimdrome?(test_str),  "[#{test_str}] is palimdrome")
  end

  def test_palimdrome_pass_katakana
    test_str = "アイウエオエウイア"

    assert(palimdrome?(test_str), "[#{test_str}] is palimdrome")
  end

end
