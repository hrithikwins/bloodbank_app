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
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(29.0),
                child: Text("Hello Shreyash"),
              ),
            ],
          ),
        ));
  }
}
