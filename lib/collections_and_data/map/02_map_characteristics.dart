// Характеристики карти (доступ за ключем, перевірка наявності)

void main() {
  final scores = {
    'Alice': 95,
    'Bob': 87,
    'Charlie': 92,
    'Diana': 88,
  };

  // Доступ до значень за ключем
  print('Alice score: ${scores['Alice']}');
  print('Bob score: ${scores['Bob']}');

  // Доступ до неіснуючого ключа повертає null
  print('Eve score: ${scores['Eve']}');

  // Безпечний доступ з значенням за замовчуванням
  print('Eve score (with default): ${scores['Eve'] ?? 0}');

  // Перевірка наявності ключа
  print('Contains Alice: ${scores.containsKey('Alice')}');
  print('Contains Eve: ${scores.containsKey('Eve')}');

  // Перевірка наявності значення
  print('Contains score 95: ${scores.containsValue(95)}');
  print('Contains score 100: ${scores.containsValue(100)}');
}
