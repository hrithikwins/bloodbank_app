import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FootBallScoresScreen extends StatefulWidget {
  const FootBallScoresScreen({super.key});

  @override
  State<FootBallScoresScreen> createState() => _FootBallScoresScreenState();
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

Stream<String> printStreamValues() async* {
  data = [];
  for (int i = 0; i < scores.length; i++) {
    await Future.delayed(
      Duration(seconds: scores[i]['time']),
      // Duration(
      //   seconds: 2,
      // ),
    );
    yield scores[i]['team'].toString();
  }
}

List<String> data = [];
// create a variable which has the gobal timer


class _FootBallScoresScreenState extends State<FootBallScoresScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        StreamBuilder(
          stream: printStreamValues(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.connectionState == ConnectionState.active ||
                snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Text("Error");
              } else if (snapshot.hasData) {
                // while inserting tthe data also insert the time here
                data.add(snapshot.data.toString());
                return Column(
                  children: data.map((e) => Text(e)).toList(),
                );
              } else {
                return Text(snapshot.connectionState.toString());
              }
            } else {
              return Text("No Data");
            }
          },
        ),
        Container(
          child: Text(
            "Football Scores",
          ),
        ),
      ],
    )));
  }
}
