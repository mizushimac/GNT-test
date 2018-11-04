def rotate_left_90(matrix)
  raise ArgumentError.new('Inputted is not matrix') unless matrix.is_a?(Array)

  rotated_matrix = matrix.transpose.reverse
  raise IndexError.new('Inputted is not square matrix') unless rotated_matrix.length == matrix.length

  rotated_matrix
end