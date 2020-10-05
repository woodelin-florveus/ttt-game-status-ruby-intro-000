# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

board = ["X", "X", "X", " ", " ", " ", " ", " ", " "]


# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
[0,1,2],  #Top
[3,4,5], #Middle
[6,7,8],  #Bottom
[0,3,6], #left_side_win
[1,4,7], #middle_side_win
[2,5,8], #right_side_win
[0,4,8], #cross_1
[6,4,2] #cross_2
]

def won(board)

  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]

  position_1 = board[win_index_1] # load the value of the board at win_index_1
  position_2 = board[win_index_2] # load the value of the board at win_index_2
  position_3 = board[win_index_3] # load the value of the board at win_index_3

  WIN_COMBINATIONS.each do |wins|
      if position_1 == "X" && position_2 == "X" && position_3 == "X"
        return win_combination
      else
        false
      end
  end

end

def full(board)
  if board == "X" || board == "O"
    return true 
  else 
    false
  end
end
