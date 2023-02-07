import 'package:bloodbank_app/constants/colors.dart';
import 'package:bloodbank_app/constants/routes.dart';
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
  String? name;

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
      name = prefs.getString(SharedPrefsConstant.name);
      _bloodGroup = prefs.getString(SharedPrefsConstant.bloodGroup.toString());
    });
  }

  Future<void> getApiData() async {
    // var response =
    await Network.get("https://jsonplaceholder.typicode.com/todos/1");
    // print(response);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 163,
              width: double.infinity,
              color: MyColors.redAccentLight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 86,
                    height: 82,
                    child:
                        Image.asset(Resources.bloodHeart, fit: BoxFit.fitWidth),
                  ),
                  Text(
                    "Donor #32457",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "Donor Status : Approved",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
            // list tie here
            ...[
              {
                "route": Routes.allMessages,
                "name": "Messages",
              },
              {
                "route": Routes.incomingRequests,
                "name": "Requests",
              },
              {
                "route": Routes.history,
                "name": "History",
              },
              {
                "route": Routes.home,
                "name": "Settings",
              },
            ]
                .map((e) => ListTile(
                      trailing: Icon(
                        Icons.keyboard_arrow_right_outlined,
                      ),
                      title: Text(e["name"].toString()),
                      onTap: () {
                        Navigator.pushNamed(context, e["route"].toString());
                      },
                    ))
                .toList(),

            // ListTile(
            //   trailing: Icon(
            //     Icons.keyboard_arrow_right_outlined,
            //   ),
            //   title: Text("Home"),
            //   onTap: () {
            //     Navigator.pop(context);
            //   },
            // ),
            TextButton(
              onPressed: getApiData,
              child: Text("Sign Out"),
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
        // color: MyColors.redPrimary,
        // width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
                // clipper: MyClipper(),
                children: [
                  Container(
                    color: MyColors.redPrimary,
                    height: 245,
                    width: double.infinity,
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(29.0),
                        child: Text(
                          "Hello $name",
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
                      ),
                    ],
                  ),
                ]),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, Routes.findDonors),
                          child: Text("Find Donors"))),
                ),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () => Navigator.pushNamed(
                              context, Routes.incomingRequests),
                          child: Text("Donate Blood"))),
                ),
                SizedBox(
                  height: 24,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget bloodDonationInfoWidget(context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.41,
      height: 238,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text(
                "Donor Status",
              ),
              Icon(
                Icons.check_circle,
                color: MyColors.greenLight,
                size: 93.0,
              ),
              Text(
                "You can Donate!",
                style: TextStyle(
                  color: Colors.blueGrey,
                ),
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
        child: SizedBox(
          height: 236,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 19.0),
                  child: Text(
                    "Hello World",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 34.0),
                  child: Stack(
                    fit: StackFit.loose,
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        Resources.bloodDrop,
                        fit: BoxFit.fitWidth,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// class MyClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     double height = size.height;
//     double width = size.width;

//     var path = Path();
//     path.lineTo(0, height - 50);
//     path.quadraticBezierTo(width / 2, height, width, height - 50);
//     path.lineTo(width, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return true;
//   }
// }
