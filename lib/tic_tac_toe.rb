class TicTacToe

  def initialize(board)
    @board = board || Array.new(9, " ")
  end


  def display_board
    divider = "-----------"
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts divider
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts divider
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [6,4,2]
  ]



end
