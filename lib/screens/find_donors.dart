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

              // // Array list of items
              // items: items.map((String items) {
              //   return DropdownMenuItem(
              //     value: items,
              //     child: Text(items),
              //   );
              // }).toList(),
              // items from 18 to 60
              items: ( for(int i = 18; i <= 60; i++ ){
                return DropDownMenuItem(
                  value: i,
                  Text(i.toString())
                )
              }),
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
