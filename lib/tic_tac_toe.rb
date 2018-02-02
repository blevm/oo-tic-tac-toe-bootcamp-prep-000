class TicTacToe

  def initialize(board)
    board = Array.new(9, " ")
    @board = board
  end


  def display_board
    divider = "-----------"
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts divider
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts divider
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(x)
    x.to_i - 1
  end

  def move(board, index, current_player)
    @index = index
    @current_player = current_player
    @board[@index] = @current_player
  end


  def position_taken?
    !(@board[@index].nil? || @board[@index] == " ")
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
