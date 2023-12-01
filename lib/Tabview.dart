import 'package:flutter/material.dart';
import 'package:nikhila/scroller.dart';

class Tabview extends StatefulWidget {
  const Tabview({super.key});

  @override
  State<Tabview> createState() => _TabviewState();
}

class _TabviewState extends State<Tabview> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(child: Text('Gachibowli')),
                Tab(child: Text('Kukatapally')),
                Tab(child: Text('Kondapur')),
                Tab(child: Text('Banzara hills')),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [Scroller()],
          ),
        ),
      ),
    );
  }
}
