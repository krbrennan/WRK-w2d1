PIECE_MAP = {
  wrook:   "\u2656",
  wknight: "\u2658",
  wbishop: "\u2657",
  wqueen:  "\u2655",
  wking:   "\u2654",
  wpawn:   "\u2659",
  brook:   "\u265C",
  bknight: "\u265E",
  bbishop: "\u265D",
  bqueen:  "\u265B",
  bking:   "\u265A",
  bpawn:   "\u265F"
}

class Piece
  attr_reader :symbol
  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
  end

  def to_s

  end

  def symbol
    self.symbol
  end

protected
  attr_reader :moves

  def moves

  end

end
