import 'package:flutter/material.dart';

class RoadmapPage extends StatefulWidget {
  const RoadmapPage({Key? key}) : super(key: key);

  @override
  State<RoadmapPage> createState() => _RoadmapPageState();
}

class _RoadmapPageState extends State<RoadmapPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.greenAccent,
    );
  }
}
