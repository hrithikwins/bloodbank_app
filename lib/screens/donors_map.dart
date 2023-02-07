import 'package:bloodbank_app/widgets/title_widgets.dart';
import 'package:flutter/material.dart';

import '../constants/routes.dart';

class DonorsMap extends StatelessWidget {
  const DonorsMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Find Donors"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TitleWidget("Find Donors in your area"),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 260,
            child: Image.network(
                fit: BoxFit.cover,
                "https://s3-alpha-sig.figma.com/img/e95c/8f66/f2df6bb1d8dfce5c915f48b7b3b46dcf?Expires=1676851200&Signature=HFrMsRdWpyv4IP9eRBlFvXqLyoTMUrbAV0n6cSrmgykdE2xGbQTeaV4MaOGQJiSRcaRT~lqYqTr~5jKtvHPbNR-8L4sVk9nL3bei4Yk3RPIW26q6kCO688KFutHbfwMCoL7T-mMoHxdxGO0Eb0ei-haEugZaMAWW0t2ULYzklTzlLf5WzKAmr2Rbfhd1syM5fZ-a1nRM04tja4HWH2VNo5dnEU5JC7m1k5w0MnJByZz-TR6N9VSCNZcrODD5BT24O~Rde2OjWsxTz0MtCuAoYaNIX~lW4dm8ZOcUKRsdPsUfpkuDrN0VwrLoBjKR14Sl68SmuwvqBjUMtzzkx4OJFg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 38.0),
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 80,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(
                    context,
                    Routes.messages,
                  ),
                  child: Text("Communicate"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
