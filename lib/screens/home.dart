import 'package:bloodbank_app/constants/colors.dart';
import 'package:bloodbank_app/constants/shared_prefs.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/images.dart';
import '../utils/network.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late SharedPreferences prefs;
  String? _bloodGroup;

  @override
  void initState() {
    super.initState();
    onInit();
    // getApiData();
    // getSharedPrefsData();
  }

  void onInit() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      _bloodGroup = prefs.getString(SharedPrefsConstant.bloodGroup.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    Future<void> getApiData() async {
      // var response =
      await Network.get("https://jsonplaceholder.typicode.com/todos/1");
      // print(response);
    }

    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: getApiData,
              child: Text("Some text here"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              // Scaffold.of(context).openDrawer();
              _scaffoldKey.currentState!.openDrawer();
            },
            icon: Icon(Icons.menu)),
      ),
      body: Container(
        color: MyColors.redPrimary,
        // width: double.infinity,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(29.0),
              child: Text(
                "Hello Hrithik",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                bloodGroupInfoWidget(context),
                bloodDonationInfoWidget(context),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget bloodDonationInfoWidget(context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.41,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: const [
              Text(
                "Hello World",
              ),
              Text(
                "Hello World",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget bloodGroupInfoWidget(context) {
    // 148/360 41%
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.41,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                "Hello World",
              ),
              Stack(
                fit: StackFit.loose,
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 32.0),
                    child: Image.asset(
                      Resources.bloodDrop,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Center(
                      child: Text(
                        _bloodGroup.toString(),
                        style: TextStyle(
                          fontSize: 50.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
