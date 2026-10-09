// ignore_for_file: noop_primitive_operations, lines_longer_than_80_chars, prefer_final_locals

// Спеціальні типи: dynamic, Object та var
// обережно з dynamic
// Object та його основні методи

// Приклад роботи з dynamic
void dynamicExample() {
  // dynamic - змінна, яка може змінювати свій тип під час виконання
  dynamic anything = 'I am a String';
  print('dynamic: $anything');
  print('dynamic.toString(): ${anything.toString()}');

  anything = 123;
  print('dynamic changed: $anything');
}

// Приклад роботи з Object та його методами
void objectExample() {
  Object object = 'I am a String';
  print('object: $object');
  print('object.toString(): ${object.toString()}');
  print('object.runtimeType: ${object.runtimeType}');
  print('object.hashCode: ${object.hashCode}');

  Object otherObject = 'I am a String';
  print('object == otherObject: ${object == otherObject}');

  object = 123;
  print('object changed: $object');
  print('object.runtimeType after change: ${object.runtimeType}');
}

// Приклад роботи з var
void varExample() {
  // var - автоматичне визначення типу змінної за початковим значенням (Dart визначить String)
  var country = 'Ukraine';
  print('var: $country');
  print('var.toUpperCase(): ${country.toUpperCase()}');
}

// Узагальнююча функція, яка викликає всі приклади
void specialTypesExample() {
  dynamicExample();
  objectExample();
  varExample();
}

void main() => specialTypesExample();
