require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/piece'

class PieceTest < MiniTest::Test

  def test_existence
    piece = Piece.new("user")
    assert_instance_of Piece, piece
  end

  def test_piece_ownership
    piece = Piece.new("user")
    result = piece.representation
    expected = "X"
    assert_equal expected, result
    piece = Piece.new("computer")
    result = piece.representation
    expected = "0"
    assert_equal expected, result
  end
end
