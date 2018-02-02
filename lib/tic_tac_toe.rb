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

  def valid_move?
    if @index.between?(0,8)
      if !position_taken?(@board, @index)
        true
      end
    end
  end

  def turn
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(@board, index)
      move(@board, index, current_player(@board))
      display_board(@board)
    else
      turn(@board)
    end
  end

  
def play
  turns = 0
  until over?(@board)
    turn(@board)
    turns += 1
  end
  if won?(@board)
    puts "Congratulations #{winner(board)}!"
  elsif draw?(@board)
    puts "Cat's Game!"
  end
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
