// Колекції у Dart
// List, Set, Map

// ignore_for_file: equal_elements_in_set, omit_local_variable_types, prefer_final_locals, noop_primitive_operations, lines_longer_than_80_chars, dead_code, avoid_function_literals_in_foreach_calls

void collectionsExample() {
  // List - список елементів (може містити дублікати)
  List<String> colors = ['red', 'green', 'blue'];

// List - варіанти виведення
  print('List: $colors');
  print('List: ${colors.toString()}');
  print('List join: ${colors.join(', ')}');
  for (final c in colors) {
    print('  - $c');
  }
  colors.forEach((final c) => print('  forEach: $c'));

  // Set - множина унікальних елементів (дублікати автоматично видаляються)
  Set<int> uniqueNumbers = {1, 2, 3, 2, 1};
  // Set - варіанти виведення, доступ по індексу
  print('Set: $uniqueNumbers');
  print('Set elementAt(0): ${uniqueNumbers.elementAt(0)}');
  print('Set elementAt(1): ${uniqueNumbers.elementAt(1)}');
  print('Set toList()[2]: ${uniqueNumbers.toList()[2]}');
  for (final n in uniqueNumbers) {
    print('  - $n');
  }
  // Map - колекція пар "ключ-значення"
  Map<String, int> productPrices = {
    'apple': 3,
    'banana': 2,
    'orange': 4,
  };

  productPrices.addAll({'pear': 5, 'apple': 3});
  // Map - варіанти виведення, доступ по індексу (keys/values/entries)
  // Map не має прямого доступу по індексу - доступ лише по ключу
  print('Map: $productPrices');
  print('Map по ключу: ${productPrices['apple']}');
  print('Map keys.elementAt(0): ${productPrices.keys.elementAt(0)}');
  print('Map values.elementAt(1): ${productPrices.values.elementAt(1)}');
  print('Map entries.elementAt(2): ${productPrices.entries.elementAt(2)}');
  print('Map keys: ${productPrices.keys}');
  print('Map values: ${productPrices.values}');
  print('Map entries: ${productPrices.entries}');
  for (final e in productPrices.entries) {
    print('  ${e.key}: ${e.value}');
  }
  productPrices.forEach((k, v) => print('  forEach: $k => $v'));
}

void main() => collectionsExample();
