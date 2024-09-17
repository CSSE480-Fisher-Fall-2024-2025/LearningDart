import 'package:learningdart/tic_tac_toe_game.dart';
// ignore: depend_on_referenced_packages
import 'package:test/test.dart';

void main() {
  late TicTacToeGame game;
  setUp(() {
    game = TicTacToeGame();
  });
  // tearDown(() {
  //   print("Teardown"); // Remove this later.
  // });

  group('Test the constructor:', () {
    test('Check the game state', () {
      expect(game.state, equals(TicTacToeState.xTurn));
    });
    test('Check the initial board', () {
      for (int k = 0; k < 9; k++) {
        expect(game.board[k], equals(TicTacToeMark.none));
      }
    });
  });

  group("Non-win moves:", () {
    test('Check 1 move', () {
      game.pressedSquare(4);
      expect(game.state, equals(TicTacToeState.oTurn));
      for (int k = 0; k < 9; k++) {
        if (k == 4) {
          expect(game.board[k], equals(TicTacToeMark.x));
        } else {
          expect(game.board[k], equals(TicTacToeMark.none));
        }
      }
    });
    test("2 Moves", () {
      game.pressedSquare(4);
      game.pressedSquare(0);
      expect(game.state, equals(TicTacToeState.xTurn));
      for (int k = 0; k < 9; k++) {
        if (k == 0) {
          expect(game.board[k], equals(TicTacToeMark.o));
        } else if (k == 4) {
          expect(game.board[k], equals(TicTacToeMark.x));
        } else {
          expect(game.board[k], equals(TicTacToeMark.none));
        }
      }
    });
    test("Out of range index: ", () {
      game.pressedSquare(-2);
      game.pressedSquare(9);
      // Same as the initial state
      expect(game.state, equals(TicTacToeState.xTurn));
      for (int k = 0; k < 9; k++) {
        expect(game.board[k], equals(TicTacToeMark.none));
      }
    });
    test("moves to squares that are not none", () {
      game.pressedSquare(4);
      game.pressedSquare(4);
      game.pressedSquare(4);
      game.pressedSquare(4);
      expect(game.state, equals(TicTacToeState.oTurn));
      for (int k = 0; k < 9; k++) {
        if (k == 4) {
          expect(game.board[k], equals(TicTacToeMark.x));
        } else {
          expect(game.board[k], equals(TicTacToeMark.none));
        }
      }
    });
  });

  group("Wins (and ties)", () {
    test("X Vertical win:", () {
      // Planned Xs: 2 5 8
      // Planned Os: 3 7
      expect(game.state, equals(TicTacToeState.xTurn));
      game.pressedSquare(2);
      expect(game.state, equals(TicTacToeState.oTurn));
      game.pressedSquare(3);
      expect(game.state, equals(TicTacToeState.xTurn));
      game.pressedSquare(5);
      expect(game.state, equals(TicTacToeState.oTurn));
      game.pressedSquare(7);
      expect(game.state, equals(TicTacToeState.xTurn));
      game.pressedSquare(8);
      expect(game.state, equals(TicTacToeState.xWon));
    });
    test("O Horizontal win:", () {
      // Planned Xs: 0 1 8
      // Planned Os: 3 4 5
      expect(game.state, equals(TicTacToeState.xTurn));
      game.pressedSquare(0);
      expect(game.state, equals(TicTacToeState.oTurn));
      game.pressedSquare(3);
      expect(game.state, equals(TicTacToeState.xTurn));
      game.pressedSquare(1);
      expect(game.state, equals(TicTacToeState.oTurn));
      game.pressedSquare(4);
      expect(game.state, equals(TicTacToeState.xTurn));
      game.pressedSquare(8);
      expect(game.state, equals(TicTacToeState.oTurn));
      game.pressedSquare(5);
      expect(game.state, equals(TicTacToeState.oWon));
    });
    test("O Diagonal win:", () {
      // Planned Xs: 2 4 6
      // Planned Os: 3 8
      expect(game.state, equals(TicTacToeState.xTurn));
      game.pressedSquare(2);
      expect(game.state, equals(TicTacToeState.oTurn));
      game.pressedSquare(3);
      expect(game.state, equals(TicTacToeState.xTurn));
      game.pressedSquare(4);
      expect(game.state, equals(TicTacToeState.oTurn));
      game.pressedSquare(8);
      expect(game.state, equals(TicTacToeState.xTurn));
      game.pressedSquare(6);
      expect(game.state, equals(TicTacToeState.xWon));
    });
    test("Tie game", () {
      // Planned Xs: 0 1 5 6 8
      // Planned Os: 3 4 2 7
      expect(game.state, equals(TicTacToeState.xTurn));
      game.pressedSquare(0);
      expect(game.state, equals(TicTacToeState.oTurn));
      game.pressedSquare(3);
      expect(game.state, equals(TicTacToeState.xTurn));
      game.pressedSquare(1);
      expect(game.state, equals(TicTacToeState.oTurn));
      game.pressedSquare(4);
      expect(game.state, equals(TicTacToeState.xTurn));
      game.pressedSquare(5);
      expect(game.state, equals(TicTacToeState.oTurn));
      game.pressedSquare(2);
      expect(game.state, equals(TicTacToeState.xTurn));
      game.pressedSquare(6);
      expect(game.state, equals(TicTacToeState.oTurn));
      game.pressedSquare(7);
      expect(game.state, equals(TicTacToeState.xTurn));
      game.pressedSquare(8);
      expect(game.state, equals(TicTacToeState.tie));
    });
  });
  group("Edge cases:", () {
    test("Playing beyond a win", () {
      // Planned Xs: 2 5 8
      // Planned Os: 3 7
      expect(game.state, equals(TicTacToeState.xTurn));
      game.pressedSquare(2);
      expect(game.state, equals(TicTacToeState.oTurn));
      game.pressedSquare(3);
      expect(game.state, equals(TicTacToeState.xTurn));
      game.pressedSquare(5);
      expect(game.state, equals(TicTacToeState.oTurn));
      game.pressedSquare(7);
      expect(game.state, equals(TicTacToeState.xTurn));
      game.pressedSquare(8);
      expect(game.state, equals(TicTacToeState.xWon));
      game.pressedSquare(4);
      expect(game.state, equals(TicTacToeState.xWon));
      game.pressedSquare(1);
      expect(game.state, equals(TicTacToeState.xWon));
    });
    test("X win on move 9", () {
      // Planned Xs: 0 1 5 6 8
      // Planned Os: 3 4 2 7
      expect(game.state, equals(TicTacToeState.xTurn));
      game.pressedSquare(0);
      expect(game.state, equals(TicTacToeState.oTurn));
      game.pressedSquare(3);
      expect(game.state, equals(TicTacToeState.xTurn));
      game.pressedSquare(1);
      expect(game.state, equals(TicTacToeState.oTurn));
      game.pressedSquare(4);
      expect(game.state, equals(TicTacToeState.xTurn));
      game.pressedSquare(5);
      expect(game.state, equals(TicTacToeState.oTurn));
      game.pressedSquare(2);
      expect(game.state, equals(TicTacToeState.xTurn));
      game.pressedSquare(6);
      expect(game.state, equals(TicTacToeState.oTurn));
      game.pressedSquare(7);
      expect(game.state, equals(TicTacToeState.xTurn));
      game.pressedSquare(8);
      expect(game.state, equals(TicTacToeState.tie));
    });
  });
}
