require 'colorize'
require_relative 'board'
require_relative "cursor"

class Display
  attr_reader :cursor, :board
  def initialize(board)
    @cursor = Cursor.new([0, 0], board)
    @board = board
  end

  def render
    board.grid.each_index do |row_idx|
      board.grid[row_idx].each_index do |col_idx|
        pos = [row_idx, col_idx]
        if cursor.cursor_pos == pos
          board_position = board[pos].symbol.center(3, " ").light_black
          print cursor.selected == true ? board_position.on_yellow : board_position.on_magenta
        elsif (row_idx + col_idx).even?
          print board_position.light_black.on_red
        else
          print board_position.light_black.on_blue
        end
      end
      puts
    end

    STDIN.echo = ""
  end

  def move_cursor
    self.cursor.get_input
    system "clear"
    render
  end

end

if __FILE__ == $PROGRAM_NAME
  b = Board.new
  d = Display.new(b)
  d.render
  d.move_cursor while true
end
