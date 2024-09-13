import 'package:learningdart/tic_tac_toe_game.dart';
import 'package:test/test.dart';

void main() {
  // group('String', () {
  //   test('.split() splits the string on the delimiter', () {
  //     var string = 'foo,bar,baz';
  //     expect(string.split(','), equals(['foo', 'bar', 'baz']));
  //   });

  //   test('.trim() removes surrounding whitespace', () {
  //     var string = '  foo ';
  //     expect(string.trim(), equals('foo'));
  //   });
  // });

  late TicTacToeGame game;
  setUp(() {
    game = TicTacToeGame();
  });

  tearDown(() {
    print("Teardown"); // Remove this later.
  });

  group('Test the constructor', () {
    test('Check the game state', () {});

    test('Check the initial board', () {});

    test('Check the board/state after a few changes', () {});
  });
}
