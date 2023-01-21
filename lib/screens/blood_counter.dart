import 'package:flutter/material.dart';

class BloodCounterScreen extends StatefulWidget {
  const BloodCounterScreen({super.key});

  @override
  State<BloodCounterScreen> createState() => _BloodCounterScreenState();
}

class _BloodCounterScreenState extends State<BloodCounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  bloodBankDetails(context),
                  SizedBox(
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        bloodDetails(),
                        bloodCounter(),
                      ],
                    ),
                  )
                ],
              ),
              if (counter == 9)
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(
                    20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "You have reached max capacity",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }

  Widget bloodCounter() => Row(
        children: [
          SizedBox(
            height: 40,
            width: 40,
            child: counter > 0
                ? IconButton(
                    onPressed: () => {
                      setState(() {
                        counter--;
                      })
                    },
                    icon: Icon(
                      Icons.remove,
                    ),
                  )
                : Container(),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text(counter.toString()),
          ),
          SizedBox(
            height: 40,
            width: 40,
            child: counter < 9
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    },
                    icon: Icon(
                      Icons.add,
                    ),
                  )
                : Container(),
          )
        ],
      );

  Text bloodDetails() => Text("B+ve");

  Container bloodBankDetails(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width * 0.48,
      decoration: BoxDecoration(
        color: Colors.grey.shade600,
        borderRadius: BorderRadius.all(
          Radius.circular(
            10,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Text(
          "Sarita\nBlood\nBank",
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
