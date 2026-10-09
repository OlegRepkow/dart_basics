// Ітерація по мапі

void main() {
  final scores = {
    'Alice': 95,
    'Bob': 87,
    'Charlie': 92,
    'Diana': 88,
    'Eve': 91,
  };

  // Ітерація по всіх парах ключ-значення
  print('All entries:');
  for (final entry in scores.entries) {
    print('${entry.key}: ${entry.value}');
  }

  // Ітерація тільки по ключах
  print('Keys:');
  for (final key in scores.keys) {
    print(key);
  }

  // Ітерація тільки по значеннях
  print('Values:');
  for (final value in scores.values) {
    print(value);
  }

  // Метод forEach для ітерації
  print('Using forEach:');

  scores.forEach((key, value) {
    print('$key: $value');
  });

  // Фільтрація елементів (не має прямого методу where для мап)
  // Можна використовувати Map.fromEntries
  print('High scores (>90):');
  final newScores =
      Map.fromEntries(scores.entries.where((entry) => entry.value > 90));
  // aбо модифікувати через removeWhere
  // final newScores = newScores.removeWhere((key, value) => value < 90);

  print('New scores: $newScores');

  // Створення нової карти, перебираючи іншу
  final doubledScores = scores.map((key, value) => MapEntry(key, value * 2));
  print('Doubled scores: $doubledScores');
}
