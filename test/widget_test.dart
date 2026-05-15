import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:music_app_ui/di/service_locator.dart';
import 'package:music_app_ui/main.dart';

void main() {
  testWidgets('App boots without exceptions', (tester) async {
    await ServiceLocator().setUp();
    await tester.pumpWidget(const MyApp());
    await tester.pump();
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
