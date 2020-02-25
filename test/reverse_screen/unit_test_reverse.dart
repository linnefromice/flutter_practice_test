import 'package:flutter_practice_test/screen/ReverseScreen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('test 01 - String should be reversed', () {
    String initial = "Hello";
    String reversed = reverseString(initial);
    expect(reversed, 'olleH');
  });
  test('test 02 - String should be reversed', () {
    String initial = "12345XYZ67890";
    String reversed = reverseString(initial);
    expect(reversed, '09876ZYX54321');
  });
}