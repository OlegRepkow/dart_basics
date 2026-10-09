// ignore: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types, prefer_final_locals, prefer_function_declarations_over_variables, inference_failure_on_function_return_type

// Явне оголошення типу змінної
// Тип вказується явно - краща читабельність, перевірка на етапі компіляції

void explicitTypesExample() {
  int age = 25;
  String name = 'Anna';
  bool isStudent = true;
  Function(String) printHello = (String name) => print('Hello, $name!');

  print('Age: $age');
  print('Name: $name');
  print('Is Student: $isStudent');
  printHello('John');
}

void main() => explicitTypesExample();
