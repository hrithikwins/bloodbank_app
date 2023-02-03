void main() {
  print("Hello World");
  getDataFromStream().listen((event) {
    print(event);
  });
}

List<Map<String, dynamic>> footballScores = [
  {
    "time": 1,
    "team": 'ENG',
  },
  {
    "time": 2,
    "team": "FRA",
  },
  {
    "time": 2,
    "team": "ENG",
  },
  {
    "time": 1,
    "team": "ENG",
  }
];

Stream<String> getDataFromStream() async* {
  for (var i = 0; i < footballScores.length; i++) {
    await Future.delayed(Duration(seconds: footballScores[i]["time"]));
    yield footballScores[i]["team"].toString();
  }
}
