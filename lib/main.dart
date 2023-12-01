import 'package:flutter/material.dart';
import 'package:nikhila/Tabview.dart';
import 'package:nikhila/content.dart';
import 'package:nikhila/searchbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            toolbarHeight: 100,
            title: Text('Blank Page App'),
            backgroundColor: Colors.red,
            actions: <Widget>[
              // SearchBar(),
              IconButton(
                icon: const Icon(Icons.add_alert),
                tooltip: 'Show Snackbar',
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('This is a snackbar')));
                },
              )
            ]),

        body: const Center(child: Tabview()),
        drawer: const Drawer(
          child: SafeArea(
              child: ListTile(
            title: Text('click'),
          )),
        ),

        // bottomNavigationBar: BottomNavigationBar(
        //   items: const [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       label: 'Home',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.person),
        //       label: 'profile',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.navigation),
        //       label: 'location',
        //     ),
        //   ],
        //   onTap: (int index) {},
        //   selectedItemColor: Colors.orange,
        // ),
        // This is where you can add your custom widgets
      ),
    );
  }
}
