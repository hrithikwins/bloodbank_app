import 'package:bloodbank_app/constants/button_theme.dart';
import 'package:bloodbank_app/constants/colors.dart';
import 'package:bloodbank_app/widgets/my_button.dart';
import 'package:bloodbank_app/widgets/title_widgets.dart';
import 'package:flutter/material.dart';

class IncomingRequests extends StatelessWidget {
  const IncomingRequests({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Container(child: Text("Incoming Requests"))),
      body: ListView(
        children: ["Requester #3982", "Requester #893"]
            .map(
              (e) => Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: MyTitleWidgets.titleWidget(
                                e,
                                fontSize: 18,
                              ),
                            ),
                            MyTitleWidgets.titleWidget(
                              e,
                              color: MyColors.redPrimary,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ButtonThemes.redRoundedButton(
                              "Accept",
                              null,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            ButtonThemes.transparentRoundedButton(
                                "Delete", null),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}
