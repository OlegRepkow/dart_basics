// Корисні методи множин (Set)

void main() {
  final numbers = {1, 2, 3, 4, 5};
  print('Множина: $numbers');

  // contains - чи є елемент у множині.
  print('contains(3): ${numbers.contains(3)}');
  print('contains(9): ${numbers.contains(9)}');

  // length / isEmpty / isNotEmpty - розмір та перевірка на порожнечу.
  print('length: ${numbers.length}');
  print('isEmpty: ${numbers.isEmpty}');

  // first / last - перший та останній елементи.
  print('first: ${numbers.first}, last: ${numbers.last}');

  // any / every - чи задовольняє умову хоч один / кожен елемент.
  print('any парне: ${numbers.any((n) => n.isEven)}');
  print('every > 0: ${numbers.every((n) => n > 0)}');

  // where - відфільтрувати елементи за умовою.
  final evens = numbers.where((n) => n.isEven).toSet();
  print('парні: $evens');

  // map - перетворити кожен елемент.
  final doubled = numbers.map((n) => n * 2).toSet();
  print('подвоєні: $doubled');

  // reduce - згорнути множину до одного значення (сума).
  final sum = numbers.reduce((a, b) => a + b);
  print('сума: $sum');

  // lookup - знайти рівний елемент (або null, якщо немає).
  print('lookup(2): ${numbers.lookup(2)}');
}
