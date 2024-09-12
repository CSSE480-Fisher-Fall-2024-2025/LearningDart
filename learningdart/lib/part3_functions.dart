void main() {
  print("Functions");
  print("addTwoNumbers(3, 4) = ${addTwoNumbers(3, 4)}");
  print("addThreeNumber(1, 2, 3) = ${addThreeNumber(1, 2, 3)}");
  print("divideTwoNumbers(dividend: 5) = ${divideTwoNumbers(dividend: 5)}");
  print(
      "divideTwoNumbers(dividend: 5, divisor: 2) = ${divideTwoNumbers(dividend: 5, divisor: 2)}");
  print("sillyStringMult('Dave') = ${sillyStringMult("Dave")}");
  print(
      "sillyStringMult('Dave', multiplier: 3) = ${sillyStringMult("Dave", multiplier: 3)}");
  print("multSomeNumbers(3, 4) = ${multSomeNumbers(3, 4)}");
  print("multSomeNumbers(3, 4, 5) = ${multSomeNumbers(3, 4, 5)}");
  print("multSomeNumbers(3, 4, 5, 6) = ${multSomeNumbers(3, 4, 5, 6)}");

  print("numMinutes(0, days: 1) = ${numMinutes(0, days: 1)}");
  print(
      "numMinutes(0, days: 0, minutes: 7) = ${numMinutes(0, days: 0, minutes: 7)}");
  print(
      "numMinutes(1, days: 1, hours: 1, minutes: 1) = ${numMinutes(1, days: 1, hours: 1, minutes: 1)}");
}

int addTwoNumbers(a, b) {
  return a + b;
}

int addThreeNumber(int a, int b, int c) => a + b + c;

double divideTwoNumbers({required dividend, divisor = 1}) {
  return dividend / divisor;
}

String sillyStringMult(String name, {multiplier = 1}) {
  return name * multiplier;
}

// Must unnecessary feature
int multSomeNumbers(int a, int b, [int c = 1, int d = 1]) => a * b * c * d;

// 1 required positional, 1 required named, 2 optional named
int numMinutes(int years, {required int days, int hours = 0, int minutes = 0}) {
  return years * 365 * 24 * 60 + days * 24 * 60 + hours * 60 + minutes;
}
