import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/src/pages/alert_page.dart';
import 'package:flutter/material.dart';

void main() {
  Widget createWidgetForTesting({Widget child}) {
    return MaterialApp(
      home: child,
    );
  }

  testWidgets('Alert Page render', (WidgetTester tester) async {
    await tester.pumpWidget(createWidgetForTesting(child: new AlertPage()));
    var typeFinder = find.byKey(Key('alertButton'));
    expect(typeFinder, findsOneWidget);
    expect(find.text('Mostrar Alerta'), findsOneWidget);
    await tester.tap(typeFinder);
    await tester.pump();
  });
}
