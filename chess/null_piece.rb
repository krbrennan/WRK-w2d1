require 'singleton'

class NullPiece

  include Singleton

  attr_reader :symbol, :color
  def initialize
    @symbol = " "
    @color = nil
  end


end
