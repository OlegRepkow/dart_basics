// ignore_for_file: lines_longer_than_80_chars, prefer_initializing_formals

// Конструктори в Dart
//
// Конструктор складається з:
// 1. Параметрів - вхідні дані
// 2. Списку ініціалізації (initializer list) - задає значення полям ДО виконання тіла
// 3. Тіла конструктора - виконується ПІСЛЯ ініціалізації, обʼєкт вже створений

// Ключове слово this використовується, щоб чітко вказати на поле обʼєкта,
//

///Default конструктор
/// Якщо клас не має конструкторів, Dart створює default конструктор
/// Default конструктор не має параметрів і не виконує ніякої логіки
class PersonDefault {
  //не обовязково писати, бо Dart сам створює default конструктор
  PersonDefault();
  void sayHello() {
    print('Hi, I am a default constructor.');
  }
}

/// Звичайний конструктор - повна версія з initializer list
///Розказати про const конструктор!

class Person {
  Person(this.name, this.age) {
    // Тіло конструктора - обʼєкт вже створений
  }

  String name;
  int age;

  void sayHello() {
    print('Hi, my name is $name and I am $age years old.');
  }
}

/// Іменований конструктор
/// Дозволяє створити кілька конструкторів з різними назвами
class PersonNamed {
  PersonNamed.named(this.name, this.age) {
    print('👤 PersonNamed.named constructor has been called');
  }

  String name;
  int age;

  void sayHello() {
    print('Hi, my name is $name and I am $age years old.');
  }
}

/// Redirect конструктор
/// Перенаправляє виклик конструктора на інший конструктор
class PersonRedirect {
  PersonRedirect(this.name, this.age);

  PersonRedirect.adult(String name) : this(name, 18);

  String name;
  int age;

  void sayHello() {
    print('Hi, my name is $name and I am $age years old.');
  }
}

void main() {
  print('\n=== Default конструктор ===');
  final person0 = PersonDefault();
  person0.sayHello();

  print('\n=== Звичайний конструктор ===');
  final person1 = Person('John Doe', 30);
  person1.sayHello();

  print('\n=== Іменований конструктор ===');
  final person2 = PersonNamed.named('Mary Jane', 20);
  person2.sayHello();

  print('\n=== Redirect конструктор ===');
  final person3 = PersonRedirect.adult('John Doe');
  person3.sayHello();
}
