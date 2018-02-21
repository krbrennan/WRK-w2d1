require_relative 'piece'

class Queen < Piece
  include Slideable

  def initialize

  end

  def symbol

  end

  def move_dirs
    Slideable.horizontal_dirs
    Slideable.diagonal_dirs
  end

end
