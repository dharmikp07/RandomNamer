import 'package:flutter_test/flutter_test.dart';
import 'package:namer/main.dart';

void main() {
  group('MyAppState Tests', () {
    test('Initial values are correct', () {
      final appState = MyAppState();
      expect(appState.current, isNotNull);
      expect(appState.favorites, isEmpty);
    });
  });
}
