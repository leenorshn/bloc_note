import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int _p;

  @override
  void initState() {
    _p = 10;
    super.initState();
  }

  late Timer timer;
  int start = 30;

  void countDown() {
    const duree = Duration(seconds: 1);
    timer = Timer.periodic(duree, (Timer _time) {
      if (start == 0) {
        setState(() {
          timer.cancel();
          start = 30;
        });
      } else {
        setState(() {
          start--;
        });
      }
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("bloc note"),
        elevation: 1,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.bell),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.bag),
          ),
        ],
      ),

      body: Center(
        child: Text(
          "$start",
          style: const TextStyle(fontSize: 40),
        ),
      ),
      // body: ListView.builder(
      //   itemBuilder: (context, index) {
      //     return Card(
      //       margin: EdgeInsets.only(top: 1),
      //       child: ListTile(
      //         title: const Text("Barack"),
      //         subtitle: const Text("0978785643"),
      //         trailing: const Icon(CupertinoIcons.phone),
      //         leading: CircleAvatar(
      //           child: Text("${index + 1}"),
      //         ),
      //       ),
      //     );
      //   },
      // ),
      /*body: Container(
        padding: EdgeInsets.all(32),
        margin: EdgeInsets.all(56),
        height: 100,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.orange[300],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text("Hello"),
      ),*/
      // body: const Text(
      //   "Bonjour Ir Barack",
      //   style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countDown();
        },
        child: const Icon(CupertinoIcons.add),
      ),
    );
  }
}
