require './lib/piece'

class GameBoard

  attr_reader :row_1,
              :row_2,
              :row_3,
              :row_4,
              :row_5,
              :row_6,
              :board

  def initialize
    @row_1 = [".", ".", ".", ".", ".", ".", "."]
    @row_2 = [".", ".", ".", ".", ".", ".", "."]
    @row_3 = [".", ".", ".", ".", ".", ".", "."]
    @row_4 = [".", ".", ".", ".", ".", ".", "."]
    @row_5 = [".", ".", ".", ".", ".", ".", "."]
    @row_6 = [".", ".", ".", ".", ".", ".", "."]
    @board = [["A", "B", "C", "D", "E", "F", "G"],
              [@row_1].flatten,
              [@row_2].flatten,
              [@row_3].flatten,
              [@row_4].flatten,
              [@row_5].flatten,
              [@row_6].flatten]
  end

  def printable
    grid = []
    @board.each do |row|
    grid << row.join
    return grid
    end
  end


  def convert_input_aplha_to_num(column)
    if column == "A"
      0
    elsif column == "B"
      1
    elsif column == "C"
      2
    elsif column == "D"
      3
    elsif column == "E"
      4
    elsif column == "F"
      5
    elsif column == "G"
      6
      end
    end
  end


  def placement(column, piece)
    index = convert_input_aplha_to_num(column)
    if @board[6][index] == "."
      @board[6].delete_at(index)
      @board[6].insert(index, piece.representation)
    elsif @board[5][index] == "."
      @board[5].delete_at(index)
      @board[5].insert(index, piece.representation)
    elsif @board[4][index] == "."
      @board[4].delete_at(index)
      @board[4].insert(index, piece.representation)
    elsif @board[3][index] == "."
      @board[3].delete_at(index)
      @board[3].insert(index, piece.representation)
    elsif @board[2][index] == "."
      @board[2].delete_at(index)
      @board[2].insert(index, piece.representation)
    elsif @board[1][index] == "."
        @board[1].delete_at(index)
        @board[1].insert(index, piece.representation)
      end



end
