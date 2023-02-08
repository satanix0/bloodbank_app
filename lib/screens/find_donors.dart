import 'package:bloodbank_app/constants/blood_groups.dart';
import 'package:bloodbank_app/widgets/title_widgets.dart';
import 'package:flutter/material.dart';

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
          titleWithWidget(
            "Patient Blood Type",
            SizedBox(
              height: 100,
              width: double.infinity,
              child: GridView.count(
                crossAxisCount: 7,
                children: bloodGroups
                    .map((e) => Container(
                          child: Text(e),
                        ))
                    .toList(),
              ),
            ),
          ),
          titleWithWidget(
            "Patient Gender",
            Row(
              children: [
                Container(
                  child: const Text("Male"),
                ),
                Container(
                  child: const Text("Female"),
                ),
              ],
            ),
          ),
          titleWithWidget(
              "Patient Relation",
              Row(
                children: [
                  Container(
                    child: const Text("Family"),
                  ),
                  Container(
                    child: const Text("Friend"),
                  ),
                  Container(
                    child: const Text("Other"),
                  ),
                ],
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
                  value: "Select Age",
                  child: Text("Select Age"),
                ),
                for (var i = 18; i <= 60; i++)
                  DropdownMenuItem(
                    value: i,
                    child: Text(i.toString()),
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
            // Changes to horizontal even though it's under column
            flex: Axis.horizontal,
          ),
          ElevatedButton(
            onPressed: () => {Navigator.pushNamed(context, Routes.donorsMap)},
            child: const Text("Find Donors"),
          ),
        ],
      ),
    );
  }

  Flex titleWithWidget(String title, Widget widget,
      {Axis flex = Axis.vertical}) {
    // default direction is vertical.
    return Flex(
      direction: flex,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleWidget(title),
        widget,
      ],
    );
  }
}
