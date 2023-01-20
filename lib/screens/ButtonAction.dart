import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

int myNumber = 0;
// const is a compile time constant and final is run time costant
void main() {
  runApp(CounterStatefulWidget());
}

//Stateful Widget : mutable widget
class CounterStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CounterWidgetState();
  }
}

class CounterWidgetState extends State<CounterStatefulWidget> {
  void initState() {
    myNumber = getDataFromDB();
    super.initState();
  }

  int getDataFromDB() {
    //call to DB server to bring my data
    return 13;
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("Number"),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(myNumber.toString()),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: onPressPlus, child: Text("+")),
                ElevatedButton(onPressed: onPressMinus, child: Text("-"))
              ],
            )
          ],
        )),
      ),
    );
  }

  void onPressPlus() {
    setState(() {
      myNumber += 1;
    });
    print("number incremented by 1 $myNumber");
  }

  void onPressMinus() {
    setState(() {
      myNumber -= 1;
    });
    print("Number decremented by 1 $myNumber");
  }
}
