require './lib/game_board'
require './lib/piece'
require 'pry'

gb = GameBoard.new

puts "Welcome to Connect 4!"

puts gb.printable
win = false
while win == false
puts "Where would you like to place your piece? Please Select a Row A - G"
user_input = gets.chomp
user_piece = Piece.new("user")
binding.pry
gb.place_piece(user_input, user_piece)
puts gb.printable
computer_piece = Piece.new("comp")
gb.place_piece(rand(6), computer_piece)
end
