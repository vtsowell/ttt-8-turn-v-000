def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0,8)
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == "X"
    return true
  elsif board[index] == "O"
    return true
  elsif board[index] == " " || "" || nil
    return false
  end
end

def input_to_index(input)
  input = input.to_i
  index = input - 1
end

def move(array, index, value = X)
  array[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, "X")
    display_board(board)
  else
    turn(board)
  end
end
