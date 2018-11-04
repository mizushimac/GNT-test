require './matrix'
require 'test/unit'

class MatrixTest < Test::Unit::TestCase

  def setup; end

  def teardown; end

  def test_failure_datatype
    input_matrix = "string"
    
    assert_raise( ArgumentError.new('Inputted is not matrix') ) { rotate_left_90(input_matrix) }
  end

  def test_failure_incorrect_matrix
    input_matrix = [[0], [1, 2]]

    assert_raise( IndexError ) { rotate_left_90(input_matrix) }
  end

  def test_failure_incorrect_square_matrix
    input_matrix = [[0, 1], [2, 3], [4, 5]]

    assert_raise( IndexError.new("Inputted is not square matrix") ) { rotate_left_90(input_matrix) }
  end

  def test_success_rotate_left_90
    ## input
    # 0 1 2
    # 3 4 5
    # 6 7 8
    input_matrix = [[0, 1, 2], [3, 4, 5], [6, 7, 8]]

    ## output
    # 2 5 8
    # 1 4 7
    # 0 3 6
    expected_matrix = [[2, 5, 8], [1, 4, 7], [0, 3, 6]]

    assert_equal(expected_matrix, rotate_left_90(input_matrix), "Matrix was rotated successfully")
  end

end