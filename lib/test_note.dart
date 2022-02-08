import 'package:flutter/material.dart';

class TestNote extends StatelessWidget {
  const TestNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            height: 600,
            width: 300,
            child: ListView(
              children: [
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.all(8),
                  child: ListTile(
                    title: Text("Malade"),
                    subtitle: Text(" victor"),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
