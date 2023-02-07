import 'package:bloodbank_app/widgets/title_widgets.dart';
import 'package:flutter/material.dart';

import '../constants/routes.dart';

class DonorsMap extends StatelessWidget {
  const DonorsMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find Donors'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TitleWidget("Find Donors in your Area"),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 260,
              child: Image.network(
                "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2F4.bp.blogspot.com%2F-mnB9c-BOfdU%2FXKDQRMzW8nI%2FAAAAAAAAAgI%2FwvcLYoS_1dEqNoOMNci2cLH2upwtPJKKQCLcBGAs%2Fs1600%2Fflutter-google-map-widget-markers.png&f=1&nofb=1&ipt=fcb22555158e47c0259fd482e57c19ca06ff7969965b3ebf51c030f2488efc8b&ipo=images",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Spacer(
            flex: 2,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, Routes.messages),
              child: Text("Communicate"),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
