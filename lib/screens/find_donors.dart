import 'package:bloodbank_app/constants/blood_groups.dart';
import 'package:bloodbank_app/constants/colors.dart';
import 'package:bloodbank_app/widgets/title_widgets.dart';
import 'package:flutter/material.dart';

import '../constants/button_theme.dart';
import '../constants/routes.dart';

class FindDonors extends StatelessWidget {
  const FindDonors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Find Donors'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: titleWithWidget(
              "Patient Blood Type",
              Container(
                margin: EdgeInsets.only(top: 18),
                child: SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: Center(
                    child: GridView.count(
                      crossAxisCount: 7,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      children: bloodGroups
                          .map(
                            (e) => ButtonThemes.redRoundedButton(
                              e,
                              () => null,
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
              ),
            ),
          ),
          titleWithWidget(
            "Patient Gender",
            Row(
              children: [
                ButtonThemes.redRoundedButton(
                  "Male",
                  () => null,
                ),
                ButtonThemes.redRoundedButton(
                  "Female ",
                  () => null,
                ),
              ],
            ),
          ),
          titleWithWidget(
              "Patient Relation",
              Row(
                children: ["Family", "Friend", "Other"]
                    .map(
                      (e) => ButtonThemes.redRoundedButton(
                        e,
                        () => null,
                      ),
                    )
                    .toList(),
              )),
          titleWithWidget(
            "Patient Age",
            DropdownButton(
              // Initial Value
              value: "Select Age",
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),
              // Array of age from 18 to 60
              items: [
                DropdownMenuItem(
                  child: Text("Select Age"),
                  value: "Select Age",
                ),
                for (var i = 18; i <= 60; i++)
                  DropdownMenuItem(
                    child: Text(i.toString()),
                    value: i,
                  )
              ],
              onChanged: (value) {},
              // After selecting the desired option,it will
              // change button value to selected value
              // onChanged: (String? newValue) {
              //   setState(() {
              //     dropdownvalue = newValue!;
              //   });
              // },
            ),
            flex: Axis.horizontal,
          ),
          ElevatedButton(
            onPressed: () => {Navigator.pushNamed(context, Routes.donorsMap)},
            child: Text("Find Donors"),
          ),
        ],
      ),
    );
  }

  Flex titleWithWidget(String title, Widget widget,
      {Axis flex = Axis.vertical}) {
    return Flex(
      direction: flex,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyTitleWidgets.titleWidget(title),
        widget,
      ],
    );
  }
}
