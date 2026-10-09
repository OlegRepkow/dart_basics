// Корисні методи списків

void main() {
  final emptyList = [];

  print('---------------------');
  // Перевірка на порожність
  print('List is empty: ${emptyList.isEmpty}');

  final colors = ['red', 'green', 'blue'];
  print('Colors is not empty: ${colors.isNotEmpty}');
  print('Colors length: ${colors.length}');

  print('---------------------');

  // Перший та останній елементи
  print('First color: ${colors.first}');
  print('Last color: ${colors.last}');

  print('---------------------');

  final numbers = [1, 2, 3, 4, 5];
  // Пошук елементів
  print('First even: ${numbers.firstWhere((e) => e.isEven)}');
  print('Last even: ${numbers.lastWhere((e) => e.isEven)}');

  print('---------------------');

  // Перевірки умов
  print('Any even: ${numbers.any((e) => e.isEven)}');
  print('All even: ${numbers.every((e) => e.isEven)}');

  print('---------------------');

  // Перевірка наявності елемента
  print('Contains 3: ${numbers.contains(3)}');

  print('---------------------');

  // Зведення списку до одного значення
  final sumReduce = numbers.reduce((a, b) => a + b);
  final sumFold = numbers.fold<int>(0, (a, b) => a + b);

  print('Sum (reduce): $sumReduce');
  print('Sum (fold): $sumFold');
}
