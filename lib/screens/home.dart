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
        body: Container());
  }
}
