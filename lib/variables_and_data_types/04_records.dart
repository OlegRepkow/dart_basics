// ignore_for_file: omit_local_variable_types, prefer_final_locals

// Record - незмінна група значень (Dart 3+) tuple
// Позиційні та іменовані поля, деструктуризація

void recordsExample() {
  // Record - незмінна група значень (позиційних або іменованих)
  (String, int) point = ('Олег', 28); // позиційний
  ({String city, String name, int age}) person =
      (city: 'Київ', name: 'Олег', age: 28); // іменований

  // Позиційний record - варіанти виведення
  print('Record: $point');
  print('Record: ${point.$1}, ${point.$2}');

  // Іменований record - варіанти виведення
  print('Record (named): ${person.name}, ${person.age}');
  print('Record (named): $person');

  // Деструктуризація - варіанти виведення
  final (name: userName, age: userAge) = (name: 'Марія', age: 25);
  print('Destructured: $userName, $userAge');

  final (x, y) = (1, 2);
  print('Destructured: x=$x, y=$y');
  print('Destructured: ${x + y}');

  print('Destructured: $userName, $userAge');

  //wildcard pattern
  final (city: _, name: _, :age) = person;
  var [a, _, _, d] = [1, 2, 3, 4]; // (ігнорує 2 and 3).
  var [c, b, ...rest] = [1, 2, 3, 4, 5]; //(c=1, b=2, rest=).
}

void main() => recordsExample();
