void main() {
  // var now = DateTime.now();
  // var jan = DateTime(2000);
  // DateTime jan = DateTime(2002, 1, 24);
  // DateTime janUtc = DateTime.utc(2002, 1, 24);
  // DateTime someDate = DateTime.parse('2002-01-24 00:00:00.000Z');
  // calculate date of birth
  // calculateAge(1990, 3, 3);
  compareYear(2002);
  // print(someDate);
}

void calculateAge(int year, int month, int day) {
  DateTime startDate = DateTime(year, month, day);
  DateTime now = DateTime.now();

  var difference = now.difference(startDate);
  print(difference);
  // print(difference.inDays / 365);
}

void compareYear(int year) {
  DateTime startDate = DateTime(year);
  DateTime now = DateTime.now();
  var difference = now.compareTo(startDate);
  print(difference);
  // print(difference.inDays / 365);
}
