import 'package:bloodbank_app/constants/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
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
        width: double.infinity,
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
}
