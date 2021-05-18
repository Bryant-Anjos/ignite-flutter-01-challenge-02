// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:notes/create_note_page.dart';
import 'package:notes/home_page.dart';

void main() {
  testWidgets('HomePage renders correctly', (WidgetTester tester) async {
    final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
      "/home": (BuildContext context) => HomePage(),
    };

    await tester.pumpWidget(MaterialApp(
      initialRoute: "/home",
      routes: routes,
    ));
    await tester.pumpAndSettle();

    expect(find.text("NOTES"), findsOneWidget);
    expect(find.byWidget(Card()), findsNothing);
  });
}
