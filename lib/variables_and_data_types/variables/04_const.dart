// Використання const - константа, відома на етапі компіляції
// Вбудовується в бінарник програми, зберігається один раз (канонізація)

void constExample() {
  const pi = 3.1415;
  const daysInWeek = 7;
  // const now = DateTime.now(); // Помилка: const потребує значення на етапі компіляції

  print('Pi: $pi');
  print('Days in week: $daysInWeek');

  //канонічна рівність
  const list = [1, 2, 3];
  const list2 = [1, 2, 3];
  print('list == list2: ${list == list2}');

  const a = A.name;
  const b = B.name;
  print('a == b: ${a == b}');
}

void main() => constExample();

class A {
  const A();
  static const String name = 'A';
}

class B {
  const B();
  static const String name = 'A';
}
