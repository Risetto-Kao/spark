import 'package:flutter/material.dart';
import 'package:spark/presentation/pages/direction_page.dart';
import 'package:spark/presentation/pages/personal_page.dart';
import 'package:spark/presentation/pages/roadmap_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final pages = const [DirectionPage(), PersonalPage(), RoadmapPage()];

  void _onItemClick(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body:,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.directions), label: "方向探索"),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: "技能地圖"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "個人專區"),
        ],
        currentIndex: _currentIndex,
        fixedColor: Colors.amber,
        onTap: _onItemClick,
      ),
      body: pages[_currentIndex],
    );
  }
}
