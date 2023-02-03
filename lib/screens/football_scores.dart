import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FootballScores extends StatefulWidget {
  const FootballScores({super.key});

  @override
  State<FootballScores> createState() => _FootballScoresState();
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

List<String> data = [];
// Timer to have a global count

Stream<String> getDataFromStream() async* {
  data = [];
  for (var i = 0; i < footballScores.length; i++) {
    await Future.delayed(Duration(seconds: footballScores[i]["time"]));
    yield footballScores[i]["team"].toString();
  }
}

class _FootballScoresState extends State<FootballScores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: StreamBuilder(
          stream: getDataFromStream(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.connectionState == ConnectionState.active ||
                  snapshot.connectionState == ConnectionState.done) {
                data.add(snapshot.data.toString());
                return Column(
                  children: data.map((e) => Text(e)).toList(),
                );
              }
            } else {
              return Container(
                child: Center(
                  child: Text("No Data"),
                ),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
