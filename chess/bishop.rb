require_relative 'piece'

class Bishop < Piece
  include Slideable

  def initialize
    super
  end

  def symbol
    color == :white ? "\u2657" : "\u265D"
  end

  def move_dirs
    diagonal_dirs
  end

end
