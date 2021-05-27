require './lib/game_logic'

describe Board do
    describe "#display_board" do
      it "displays the game board" do
        board = Board.new
        expect(board.display_board).to eql(  " 1 | 2 | 3 \n" \
            "+---+---+---+\n" \
            " 4 | 5 | 6 \n" \
            "+---+---+---+\n" \
            " 7 | 8 | 9 \n" )
      end
    end
  end