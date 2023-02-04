import 'package:bloodbank_app/constants/colors.dart';
import 'package:flutter/material.dart';

import '../utils/network.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    Future<void> getApiData() async {
      // var response =
      await Network.get("https://jsonplaceholder.typicode.com/todos/1");
      // print(response);
    }
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: getApiData,
              child: Text("Some text here"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => {
            _scaffoldKey.currentState!.openDrawer(),
          },
          icon: const Icon(
            Icons.menu,
          ),
        ),
      ),
    );
  }

  Widget bloodGroupInfoWidget(context) {
    // 148/360 41%
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.41,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: const [
              Text(
                "Hello World",
              ),
              Text(
                "Hello World",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column homeInfoBoxes() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(29.0),
          child: const Text("hello Hrithik"),
        ),
        // the row with two columns
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [bloodBankInfoBox(), bloodBankInfoStatus()],
        )
      ],
    );
  }

  Column bloodBankInfoBox() {
    return Column(
      children: const [Text("Blood Group"), Text("Blood Goup ")],
    );
  }

  Column bloodBankInfoStatus() {
    return Column(
      children: const [Text("Blood Group"), Text("Blood Goup ")],
    );
  }
}
