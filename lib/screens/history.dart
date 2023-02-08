import 'package:flutter/material.dart';

import '../constants/button_theme.dart';
import '../constants/colors.dart';
import '../widgets/title_widgets.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Donation History",
        ),
      ),
      body: Column(
        children: [
          //TODO: switch buttons group at the top
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: ["Requester #3982", "Requester #893"]
                    .map(
                      (e) => Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 8,
                            ),
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
            ),
          ),
        ],
      ),
    );
  }
}
