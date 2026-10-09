// Урок 4: Основні типи даних у Dart
// Матеріал розбито на окремі файли для зручності обговорення

import 'package:dart_basics/variables_and_data_types/01_primitives.dart' as p1;
import 'package:dart_basics/variables_and_data_types/02_collections.dart' as p2;
import 'package:dart_basics/variables_and_data_types/03_special_types.dart' as p3;
import 'package:dart_basics/variables_and_data_types/04_records.dart' as p4;
import 'package:dart_basics/variables_and_data_types/05_enums.dart' as p5;

void main() {
  print('=== 1. Примітивні типи ===');
  p1.primitivesExample();

  print('\n=== 2. Колекції ===');
  p2.collectionsExample();

  print('\n=== 3. Спеціальні типи (dynamic, var) ===');
  p3.specialTypesExample();

  print('\n=== 4. Records ===');
  p4.recordsExample();

  print('\n=== 5. Enums ===');
  p5.enumsExample();
}
