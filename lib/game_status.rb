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
[2,4,6] #cross_2
]