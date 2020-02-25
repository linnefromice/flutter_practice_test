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
    expect(find.text("Answer is ... "), findsNothing);
    await tester.enterText(textField, 'Hello');
    expect(find.text('Hello'), findsOneWidget);
    var button = find.text("Reverse");
    expect(button, findsOneWidget);
    await tester.tap(button);
    await tester.pump();
    expect(find.text("Answer is ... "), findsOneWidget);
    expect(find.text("olleH"), findsOneWidget);
  });

  testWidgets("widget test 02 - Reverse string widget", (WidgetTester tester)
  async {
    await tester.pumpWidget(MaterialApp(
        home: ReverseScreen()
    )
    );
    var textField = find.byType(TextField);
    expect(textField, findsOneWidget);
    expect(find.text("Answer is ... "), findsNothing);
    await tester.enterText(textField, '12345XYZ67890');
    expect(find.text('12345XYZ67890'), findsOneWidget);
    var button = find.text("Reverse");
    expect(button, findsOneWidget);
    await tester.tap(button);
    await tester.pump();
    expect(find.text("Answer is ... "), findsOneWidget);
    expect(find.text("09876ZYX54321"), findsOneWidget);
  });

  testWidgets("widget test 03 - Reverse string widget when no input", (WidgetTester tester)
  async {
    await tester.pumpWidget(MaterialApp(
        home: ReverseScreen()
    )
    );
    var textField = find.byType(TextField);
    expect(textField, findsOneWidget);
    expect(find.text("Answer is ... "), findsNothing);
    var button = find.text("Reverse");
    expect(button, findsOneWidget);
    await tester.tap(button);
    await tester.pump();
    expect(find.text("Answer is ... "), findsNothing);
  });

}