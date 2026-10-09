// Примітивні типи даних у Dart
// int, double, String, bool

// ignore_for_file: omit_local_variable_types, prefer_final_locals, noop_primitive_operations, lines_longer_than_80_chars

void primitivesExample() {
  // int - цілі числа
  int age = 30;
  // double - числа з плаваючою комою
  double height = 1.859;
  // String - текстові рядки
  String name = 'John Doe';
  // bool - логічні значення
  bool isActive = true;

  // Варіанти виведення int
  print('int: $age');
  print('int: ${age.toString()}');
  print('int: ${age + 0}'); // вираз у ${}

  // Варіанти виведення double
  print('double: $height');
  print('double: ${height.toStringAsFixed(2)}');
  print('double: ${height.toStringAsFixed(0)}');

  // Варіанти виведення String
  print('String: $name');
  print('String: ${name.toUpperCase()}');
  print('String: ${name.length} символів');

  // Варіанти виведення bool
  print('bool: $isActive');
}

void main() => primitivesExample();
