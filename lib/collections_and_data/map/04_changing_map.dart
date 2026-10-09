// Зміна карти (додавання, видалення, оновлення елементів)

void main() {
  final scores = {'Alice': 95, 'Bob': 87, 'Charlie': 92};

  print('Initial scores: $scores');

  // Додавання нового елемента
  scores['Diana'] = 88;
  print('After adding Diana: $scores');

  // Зміна існуючого значення
  scores['Bob'] = 90;
  print('After updating Bob: $scores');

  // Додавання елемента, який вже існує (перезапише значення)
  scores['Alice'] = 98;
  print('After updating Alice: $scores');

  // Видалення елемента
  scores.remove('Bob');
  print('After removing Bob: $scores');

  // Видалення неіснуючого елемента (нічого не зміниться)
  scores.remove('Eve');
  print('After removing Eve (does not exist): $scores');

  // Додавання кількох елементів
  scores.addAll({'Eve': 91, 'Frank': 85, 'Grace': 93});
  print('After adding multiple entries: $scores');

  // Видалення елементів за умовою
  scores.removeWhere((key, value) => value < 90);
  print('After removing scores < 90: $scores');

  // Очищення карти
  scores.clear();
  print('After clearing: $scores');
}
