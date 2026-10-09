// Створення мапи (різні способи створення карт)

import 'dart:math';

void main() {
  // Створення мапи з явно вказаними парами ключ-значення
  final map1 = {'a': 1, 'b': 2, 'c': 3, 'd': 4, 'e': 5};
  print(map1);

  // Створення мапи з дублікатами ключів (останній перезапише попередні)
  // ignore: equal_keys_in_map
  final map2 = {'a': 1, 'b': 2, 'a': 3, 'b': 4, 'c': 5};
  print(map2);

  // Створення мапи з різними типами даних
  final person = {
    'name': 'John',
    'age': 30,
    'isStudent': false,
    'grades': [85, 90, 78, 92],
  };
  print(person);

  // Створення порожньої мапи
  final emptyMap = <String, int>{};
  print(emptyMap);

  // Створення мапи з List
  final list = List.generate(20, (index) {
    return Random().nextInt(index + 1);
  });
  print(list);
  print('--------');

  final map3 = list.asMap();
  print('map3: $map3');
}
