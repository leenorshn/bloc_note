import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.only(top: 1),
            child: ListTile(
              title: const Text("Barack"),
              subtitle: const Text("0978785643"),
              trailing: const Icon(CupertinoIcons.phone),
              leading: CircleAvatar(
                child: Text("${index + 1}"),
              ),
            ),
          );
        },
      ),
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
          print("Bonjour Ir Alfred");
        },
        child: const Icon(CupertinoIcons.add),
      ),
    );
  }
}
