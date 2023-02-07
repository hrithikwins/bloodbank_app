import 'package:bloodbank_app/constants/data_constants.dart';
import 'package:bloodbank_app/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class FindDonors extends StatelessWidget {
  const FindDonors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Find Donors"),
      ),
      body: Column(
        children: [
          titleWithWidget(
            "Blood Group",
            Expanded(
              child: GridView.count(
                crossAxisCount: 7,
                children: bloodGroup
                    .map(
                      (e) => Text(
                        e,
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          titleWithWidget(
              "Patient Gender",
              Row(
                children: [
                  Text("Male"),
                  Text("Female"),
                ],
              )),
          titleWithWidget(
              "Patient Relation",
              Row(
                children: [
                  Text("Family"),
                  Text("Friend"),
                  Text("Other"),
                ],
              )),
          titleWithWidget(
            "Patient's Age",
            DropdownButton(
              // Initial Value
              value: "Select Age",

              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

              items: [
                DropdownMenuItem(
                  child: Text("Select Age"),
                  value: "Select Age",
                ),
                for (int i = 18; i <= 60; i++)
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
          ),
        ],
      ),
    );
  }

  Expanded titleWithWidget(String title, Widget widget) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleWidget(
            title,
          ),
          widget
        ],
      ),
    );
  }
}
