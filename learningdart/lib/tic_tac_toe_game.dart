// ignore_for_file: avoid_print

enum TicTacToeMark { none, x, o }

enum TicTacToeState { xTurn, oTurn, xWon, oWon, tie }

class TicTacToeGame {
  var board = List<TicTacToeMark>.filled(9, TicTacToeMark.none);
  var state = TicTacToeState.xTurn;

  String get stateString => state.toString().split(".").last;

  String get boardString {
    var result = "";
    for (var mark in board) {
      // Option #1 - Switch statement
      // switch (mark) {
      //   case TicTacToeMark.x:
      //     result += "X";
      //     break;
      //   case TicTacToeMark.none:
      //     result += "-";
      //     break;
      //   case TicTacToeMark.o:
      //     result += "O";
      //     break;
      // }

      // Option #2 - if statement
      // if (mark == TicTacToeMark.x) {
      //   result += "X";
      // } else if (mark == TicTacToeMark.o) {
      //   result += "O";
      // } else {
      //   result += "-";
      // }

      // Option #3 - something else
      result +=
          mark == TicTacToeMark.x ? "X" : (mark == TicTacToeMark.o ? "O" : "-");
    }
    return result;
  }

  @override
  String toString() {
    return "$stateString $boardString";
  }
}

void main() {
  print("Quick and dirty testing (pre-unit testing)");
  TicTacToeMark mark = TicTacToeMark.x;
  print(mark);
  var state = TicTacToeState.xWon;
  print(state);
  var game = TicTacToeGame();
  game.board[4] = TicTacToeMark.x;
  game.board[8] = TicTacToeMark.o;
  print(game);
}
