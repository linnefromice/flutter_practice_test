import 'package:flutter/material.dart';

class ReverseScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ReverseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reverse App')),
      body: Text('Reverse App'),
    );
  }
}