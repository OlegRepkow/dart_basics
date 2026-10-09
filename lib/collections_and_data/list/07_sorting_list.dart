// Сортування списку

// ignore_for_file: cascade_invocations

import 'dart:math';

void main() {
  // Створення списку з випадковими числами
  final numbers = List.generate(100, (index) => Random().nextInt(100));

  // Сортування списку за зростанням
  numbers.sort();
  print('Sorted numbers: $numbers');

  // Сортування списку за зростанням за допомогою компаратора
  numbers.sort((a, b) => a.compareTo(b));
  print('Sorted numbers ascending: $numbers');

  // Сортування списку за спаданням за допомогою компаратора
  numbers.sort((a, b) => b.compareTo(a));
  print('Sorted numbers descending: $numbers');
}
