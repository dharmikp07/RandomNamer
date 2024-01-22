import 'package:flutter_test/flutter_test.dart';
import 'package:namer/main.dart';
import 'package:english_words/english_words.dart';

void main() {
  group('MyAppState Tests', () {
    test('Initial values are correct', () {
      final appState = MyAppState();
      expect(appState.current, isNotNull);
      expect(appState.favorites, isEmpty);
    });

    test('toggleFavorite adds and removes a WordPair from favorites', () {
      final appState = MyAppState();
      final pair = WordPair.random();

      // Initially, favorites should be empty
      expect(appState.favorites.contains(pair), isFalse);

      // Toggle favorite should add the pair to favorites
      appState.toggleFavorite();
      expect(appState.favorites.contains(pair), isTrue);

      // Toggle favorite again should remove the pair from favorites
      appState.toggleFavorite();
      expect(appState.favorites.contains(pair), isFalse);
    });
  });
}
