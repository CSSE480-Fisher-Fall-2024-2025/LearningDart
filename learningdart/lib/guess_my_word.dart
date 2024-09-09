// ignore_for_file: avoid_print

import 'dart:io';

import 'package:word_generator/word_generator.dart';

void main() {
  print("Guess My Word!");

  final wordGenerator = WordGenerator();
  String secretWord = wordGenerator.randomNoun();
  print(secretWord);
  String displayWord = '*' * secretWord.length;
  print("Word: $displayWord");
  var guessedLetters = <String>[];

  while (true) {
    print("");
    stdout.write("Guess a letter: ");
    String? guess = stdin.readLineSync();
    if (guess == null || guess.length != 1) {
      print("You must guess a single letter.  Try again.");
      continue;
    }

    if (guessedLetters.contains(guess)) {
      print("You already guessed that letter.  Try again!");
      continue;
    }
    guessedLetters.add(guess);

    if (secretWord.contains(guess)) {
      print("Correct");
      displayWord = fancyUpdateDisplayWord(
        oldDisplayWord: displayWord,
        secretWord: secretWord,
        currentGuess: guess,
      );
    } else {
      print("Incorrect");
    }

    print("Guessed letters: $guessedLetters");
    print("Word: $displayWord");

    if (secretWord == displayWord) {
      print("\n\nYou Win!!!\n\n");
      break;
    }
  }
}

String updateDisplayWord(
    {required String oldDisplayWord,
    required String secretWord,
    required String currentGuess}) {
  String newDisplayWord = "";

  for (int k = 0; k < secretWord.length; k++) {
    String letter = secretWord[k];
    if (currentGuess == letter) {
      newDisplayWord += currentGuess;
    } else {
      newDisplayWord += oldDisplayWord[k];
    }
  }
  return newDisplayWord;
}

String fancyUpdateDisplayWord(
    {required String oldDisplayWord,
    required String secretWord,
    required String currentGuess}) {
  var displayWordList = oldDisplayWord.split("");
  var hits =
      currentGuess.allMatches(secretWord).map((match) => match.start).toList();

  for (var index in hits) {
    displayWordList[index] = currentGuess;
  }
  return displayWordList.join();
}
