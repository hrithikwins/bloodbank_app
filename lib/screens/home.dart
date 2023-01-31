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
              child: Text("Tiles"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => {
            _scaffoldKey.currentState!.openDrawer(),
          },
          icon: Icon(
            Icons.menu,
          ),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: homeInfoBoxes(),
        ),
      ),
    );
  }

  Column homeInfoBoxes() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(29.0),
          child: Text("hello Hrithik"),
        ),
        // the row with two columns
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [bloodBankInfoBox(), bloodBankInfoStatus()],
        )
      ],
    );
  }

  Column bloodBankInfoBox() {
    return Column(
      children: [Text("Blood Group"), Text("Blood Goup ")],
    );
  }

  Column bloodBankInfoStatus() {
    return Column(
      children: [Text("Blood Group"), Text("Blood Goup ")],
    );
  }
}
