import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:audiobook_mobile_app/main.dart';

void main() {
  testWidgets('App generation message displayed', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('audiobook_mobile_app App is being generated...'), findsOneWidget);
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('App bar has correct title', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('audiobook_mobile_app'), findsOneWidget);
  });
}
