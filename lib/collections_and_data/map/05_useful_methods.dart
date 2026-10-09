// Корисні методи карт

void main() {
  final emptyMap = <String, int>{};
  print('Empty map is empty: ${emptyMap.isEmpty}');

  final scores = {'Alice': 95, 'Bob': 87, 'Charlie': 92, 'Diana': 88};
  print('Scores map is not empty: ${scores.isNotEmpty}');

  print('Length of scores map: ${scores.length}');

  // Отримання всіх ключів
  print('Keys: ${scores.keys}');

  // Отримання всіх значень
  print('Values: ${scores.values}');

  // Отримання всіх пар ключ-значення
  print('Entries: ${scores.entries}');

  // Перевірка наявності ключа
  print('Contains key Alice: ${scores.containsKey('Alice')}');
  print('Contains key Eve: ${scores.containsKey('Eve')}');

  // Перевірка наявності значення
  print('Contains value 95: ${scores.containsValue(95)}');
  print('Contains value 100: ${scores.containsValue(100)}');

  // Безпечне отримання значення з значенням за замовчуванням
  print('Alice score: ${scores['Alice'] ?? 0}');
  print('Eve score: ${scores['Eve'] ?? 0}');

  // Отримання значення з можливістю видалення
  final removedValue = scores.remove('Bob');
  print('Removed Bob score: $removedValue');
  print('Scores after removal: $scores');

  // Додавання елемента тільки якщо ключ не існує
  scores.putIfAbsent('Bob', () => 85);
  print('After putIfAbsent Bob: $scores');

  // Додавання елемента тільки якщо ключ не існує (не додасться)
  scores.putIfAbsent('Alice', () => 100);
  print('After putIfAbsent Alice (already exists): $scores');
}
