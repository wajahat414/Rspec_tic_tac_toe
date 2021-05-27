require './lib/game_logic'

describe Board do
  describe '#display_board' do
    it 'displays the game board' do
      board = Board.new
      expect(board.display_board).to eql(" 1 | 2 | 3 \n" \
          "+---+---+---+\n" \
          " 4 | 5 | 6 \n" \
          "+---+---+---+\n" \
          " 7 | 8 | 9 \n")
    end
  end
  describe '#checkwinner' do
    it 'checks all the winning combinations' do
      board = Board.new
      board.board[0]='x'
      board.board[1]='x'
      board.board[2]='x'
      expect(board.checkwinner).to eql(true)
      board = Board.new
      board.board[3]='x'
      board.board[4]='x'
      board.board[5]='x'
      expect(board.checkwinner).to eql(true)
      board = Board.new
      board.board[6]='x'
      board.board[7]='x'
      board.board[8]='x'
      expect(board.checkwinner).to eql(true)
      board = Board.new
      board.board[0]='x'
      board.board[3]='x'
      board.board[6]='x'
      expect(board.checkwinner).to eql(true)
      board = Board.new
      board.board[1]='x'
      board.board[4]='x'
      board.board[7]='x'
      expect(board.checkwinner).to eql(true)
      board = Board.new
      board.board[2]='x'
      board.board[5]='x'
      board.board[8]='x'
      expect(board.checkwinner).to eql(true)
      board = Board.new
      board.board[0]='x'
      board.board[4]='x'
      board.board[8]='x'
      expect(board.checkwinner).to eql(true)
      board = Board.new
      board.board[2]='x'
      board.board[4]='x'
      board.board[6]='x'
      expect(board.checkwinner).to eql(true)
    end
  end
end
