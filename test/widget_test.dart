import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:irem/main.dart';

void main() {
  testWidgets('Company Details and Customers test',
      (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the Company Details section is present.
    expect(find.text('Company Details'), findsOneWidget);

    // Verify that the company name "Abstergo Ltd." is present.
    expect(find.text('Abstergo Ltd.'), findsOneWidget);

    // Verify that the first customer "Jane Cooper" is present.
    expect(find.text('Jane Cooper'), findsOneWidget);

    // Tap on the customer tile for "Esther Howard" to select it.
    await tester.tap(find.text('Esther Howard'));
    await tester.pump();

    // Verify that the selected customer is "Esther Howard".
    expect(find.text('Esther Howard'), findsOneWidget);

    // Verify that the "Fleet Discounts" button is present.
    expect(find.text('Fleet Discounts'), findsOneWidget);

    // Tap the "Fleet Discounts" button.
    await tester.tap(find.text('Fleet Discounts'));
    await tester.pump();

    // Additional checks can be added here as needed.
  });
}
