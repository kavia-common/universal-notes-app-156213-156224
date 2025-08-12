import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_frontend/main.dart';

void main() {
  testWidgets('Home screen shows Notes title and FAB', (WidgetTester tester) async {
    await tester.pumpWidget(const NotesApp());
    await tester.pumpAndSettle();

    expect(find.text('Notes'), findsOneWidget);
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });

  testWidgets('Can navigate to create note screen', (WidgetTester tester) async {
    await tester.pumpWidget(const NotesApp());
    await tester.pumpAndSettle();

    // Tap FAB to navigate to EditNoteScreen
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pumpAndSettle();

    expect(find.text('New Note'), findsOneWidget);
    expect(find.byType(TextFormField), findsWidgets);
  });
}
