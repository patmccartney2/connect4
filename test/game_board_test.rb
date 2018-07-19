require './lib/game_board'
require './lib/piece'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class GameBoardTest < MiniTest::Test

  def test_existence
    b = GameBoard.new
    assert_instance_of GameBoard, b
  end

  def test_rows
    b = GameBoard.new
    result = b.row_1
    expected = [".", ".", ".", ".", ".", ".", "."]
    assert_equal expected, result
  end

  def test_full_board
    b = GameBoard.new
    result = b.board
    expected = [["A", "B", "C", "D", "E", "F", "G"],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."]]
    assert_equal expected, result
  end

  def test_it_can_hold_pieces
    gb = GameBoard.new
    piece = Piece.new("user")
    gb.placement("A", piece)
    result = gb.board
    expected = [["A", "B", "C", "D", "E", "F", "G"],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                ["X", ".", ".", ".", ".", ".", "."]]
    assert_equal expected, result
  end

  def test_multiple_pieces_and_positions
    gb = GameBoard.new
    user_piece = Piece.new("user")
    user_piece_1 = Piece.new("user")
    comp_piece = Piece.new("Comp")
    comp_piece_1 = Piece.new("Comp")
    gb.placement("A", user_piece)
    gb.placement("A", comp_piece)
    gb.placement("A", user_piece_1)
    gb.placement("B", comp_piece_1)
    result = gb.board
    expected = [["A", "B", "C", "D", "E", "F", "G"],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                ["X", ".", ".", ".", ".", ".", "."],
                ["0", ".", ".", ".", ".", ".", "."],
                ["X", "0", ".", ".", ".", ".", "."]]
    assert_equal expected, result
  end


end
