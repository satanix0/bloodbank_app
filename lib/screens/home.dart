import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          children: const [
            Text("Tiles"),
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
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: homeInfoBoxes(),
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
