// Оголошення та ініціалізація змінних у Dart

import 'package:dart_basics/variables_and_data_types/variables/01_explicit_types.dart' as v1;
import 'package:dart_basics/variables_and_data_types/variables/02_var.dart' as v2;
import 'package:dart_basics/variables_and_data_types/variables/03_final.dart' as v3;
import 'package:dart_basics/variables_and_data_types/variables/04_const.dart' as v4;
import 'package:dart_basics/variables_and_data_types/variables/05_late.dart' as v5;
import 'package:dart_basics/variables_and_data_types/variables/06_nullable.dart' as v6;

void main() {
  print('=== 1. Явне оголошення типу ===');
  v1.explicitTypesExample();

  print('\n=== 2. var ===');
  v2.varExample();

  print('\n=== 3. final ===');
  v3.finalExample();

  print('\n=== 4. const ===');
  v4.constExample();

  print('\n=== 5. late ===');
  v5.lateExample();

  print('\n=== 6. Nullable та Null Safety ===');
  v6.nullableExample();
}
