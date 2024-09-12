// ignore_for_file: avoid_print

void main() {
  print("Collections: List Set Map");
  // learnAboutList();
  // learnAboutSet();
  learnAboutMap();
}

void learnAboutList() {
  // var scores = [75, 52, 93, 87, 41, 83];
  // List<int> scores = [75, 52, 93, 87, 41, 83];
  final List<int> scores = [75, 52, 93, 87, 41, 83];
  print("Values: $scores");
  print("Type: ${scores.runtimeType}");
  scores[2] = 32;
  scores.add(101);
  print("Values: $scores");
  print("Type: ${scores.runtimeType}");

  var scores2 = <int>[];
  // List<int> scores3 = [];
  print("Values: $scores2");
  print("Type: ${scores2.runtimeType}");

  // Enhance for loop
  var totalPassing = 0;
  for (var score in scores) {
    if (score >= 60) {
      totalPassing++;
    }
  }
  print("$totalPassing students passed out of ${scores.length}");

  // Indexed loop
  var totalFailing = 0;
  for (int k = 0; k < scores.length; k++) {
    if (scores[k] < 60) {
      totalFailing += 1;
    }
  }
  print("$totalFailing students failed out of ${scores.length}");

  // For each
  // scores.forEach((var key, var value) {});
}

void learnAboutSet() {
  final mySet = {3, 4, 5};
  mySet.add(6);
  mySet.add(3);
  print("Value: $mySet");
  print("Type: ${mySet.runtimeType}");

  var mySet2 = <int>{};
  for (var value in mySet) {
    print(value);
  }
}

void learnAboutMap() {
  final myMap = {"Dave": 47, "Bob": 50};
  print("Value $myMap");
  print("Type: ${myMap.runtimeType}");

  final myMap2 = <int, bool>{};
  myMap2[4] = true;
  myMap2[123] = false;
  print("Value $myMap2");
  print("Type: ${myMap2.runtimeType}");
}
