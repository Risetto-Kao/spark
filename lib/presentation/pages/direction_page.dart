import 'package:flutter/material.dart';

class DirectionPage extends StatefulWidget {
  const DirectionPage({Key? key}) : super(key: key);

  @override
  State<DirectionPage> createState() => _DirectionPageState();
}

class _DirectionPageState extends State<DirectionPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.grey,
    );
  }
}
