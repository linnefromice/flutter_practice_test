import 'package:flutter/material.dart';
import 'package:flutter_practice_test/screen/ReverseScreen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("widget test 01 - Reverse string widget", (WidgetTester tester)
  async {
    await tester.pumpWidget(MaterialApp(
        home: ReverseScreen()
      )
    );
    var textField = find.byType(TextField);
    expect(textField, findsOneWidget);
    await tester.enterText(textField, 'Hello');
    expect(find.text('Hello'), findsOneWidget);
    var button = find.text("Reverse");
    expect(button, findsOneWidget);
    await tester.tap(button);
    await tester.pump();
    expect(find.text("olleH"), findsOneWidget);
  });
}