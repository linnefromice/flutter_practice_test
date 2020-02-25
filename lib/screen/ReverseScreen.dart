import 'package:flutter/material.dart';

class ReverseScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ReverseScreen> {
  TextEditingController _controller = TextEditingController();
  String _reversed;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reverse App')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: _controller,
            ),
            SizedBox(height: 10.0),
            if (_reversed != null) ...[
              Text(
                _reversed,
              ),
              SizedBox(height: 10.0),
            ],
            RaisedButton(
              child: Text('Reverse'),
              onPressed: () {
                if (_controller.text.isEmpty) return;
                setState(() {
                  _reversed = reverseString(_controller.text);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

String reverseString(String initial) {
  return initial.split('').reversed.join();
}