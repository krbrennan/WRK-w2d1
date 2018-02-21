
module Slideable

  HORIZONTAL_DIRS = [[0, 1], [0, -1], [1, 0], [-1, 0]].freeze

  DIAGONAL_DIRS = [[-1, -1], [-1, 1], [1, 1], [1, -1]].freeze

  def horizontal_dirs
    HORIZONTAL_DIRS
  end

  def diagonal_dirs
    DIAGONAL_DIRS
  end

  def moves
    all_moves = []
    move_dirs.each do |pos_diff|
      all_moves << grow_unblocked_moves_in_dir(post[0], post[1])
    end
    all_moves
  end

  def move_dirs
    raise "Can't call me directly!"
  end

  def grow_unblocked_moves_in_dir(dx, dy)

  end

end
