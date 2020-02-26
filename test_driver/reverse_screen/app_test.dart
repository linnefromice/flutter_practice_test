import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('flutter reversi app test', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() {
      if (driver != null) {
        driver.close();
      }
    });

    test("reverse the string", () async {
      // TODO: modify (can't proceed)
      await driver.tap(find.byType("Drawer"));
      await driver.tap(find.byType("ListTile"));
      await driver.tap(find.byType("TextField"));
      await driver.enterText("Hello");
      await driver.tap(find.text("Reverse"));
      await driver.waitFor(find.text("olleH"));
      await driver.waitUntilNoTransientCallbacks();
      assert(find.text("olleH") != null);
    });
  });
}