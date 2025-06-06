import 'package:flutter/material.dart';
import 'package:flutter_icon_field/flutter_icon_field.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('IconField renders with icon and placeholder text',
      (WidgetTester tester) async {
    // Build widget
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FlutterIconField(
            icon: Icon(Icons.search),
            hintText: 'Pesquisar...',
          ),
        ),
      ),
    );

    // Check if the icon has rendered
    expect(find.byIcon(Icons.search), findsOneWidget);

    // Checks if placeholder text is present
    expect(find.text('Pesquisar...'), findsOneWidget);

    // Checks if there is a TextField
    expect(find.byType(TextField), findsOneWidget);
  });
}
