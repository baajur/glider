import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cocoon/cocoon.dart';

void main() {
  testWidgets('tooltip test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Cocoon({
        "type": "tooltip",
        "message": "A tooltip",
        "child": {
          "type": "text",
          "text": "Hello",
        }
      }),
    ));

    expect(find.byTooltip("A tooltip"), findsOneWidget);
  });
}