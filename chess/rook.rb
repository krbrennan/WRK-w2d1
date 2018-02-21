require_relative 'piece'

class Rook < Piece
  include Slideable

  def initialize

  end

  def symbol

  end

  def move_dirs
    horizontal_dirs
  end

end
