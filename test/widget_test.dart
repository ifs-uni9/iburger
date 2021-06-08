import 'package:flutter_test/flutter_test.dart';
import 'package:iBurger/core/app.dart';

void main() {
  testWidgets('Pump app', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(AppIBurger());
  });
}
