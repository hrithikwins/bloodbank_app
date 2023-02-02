void main() {
  print("Hello");

  printStreamValues().listen(
    (event) {
      print(event);
    },
  );
}

List<Map<String, dynamic>> scores = [
  {
    "time": 1,
    "team": 'ENG',
  },
  {
    "time": 2,
    "team": 'FRA',
  },
  {
    "time": 2,
    "team": 'ENG',
  },
  {
    "time": 1,
    "team": 'ENG',
  }
];

Stream<dynamic> printStreamValues() async* {
  for (int i = 0; i < scores.length; i++) {
    Future.delayed(
      Duration(seconds: 10),
    );
    yield {"team": scores[i]['team']};
  }
}
//  printStreamValues() async {
// this will not yeild any value
//  }
