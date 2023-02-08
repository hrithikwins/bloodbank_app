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
                children: ["Date 11/10/12", "Date 11/10/12"]
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
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
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
                                    Container(
                                      child: MyTitleWidgets.titleWidget(
                                        e,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    MyTitleWidgets.titleWidget(
                                      e,
                                      color: MyColors.redPrimary,
                                      fontWeight: FontWeight.w400,
                                    ),
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
