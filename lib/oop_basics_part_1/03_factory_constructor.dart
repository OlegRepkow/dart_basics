// ignore_for_file: lines_longer_than_80_chars

// Factory конструктор
//
// Factory конструктор - це спеціальний конструктор, який НЕ створює обʼєкт автоматично.
// Замість цього він виконує довільну логіку і повертає екземпляр класу через return.
//
// Відмінності від звичайного конструктора:
// - Має ключове слово factory
// - Не має initializer list
// - Повинен явно повертати обʼєкт через return
// - Не має доступу до класових полів (this)
// - Може виконувати логіку перед створенням обʼєкта

class Person {
  Person(this.name, this.age);

  factory Person.create(String name, int age) {
    print('Factory constructor called');

    // Тут можна додати логіку перед створенням обʼєкта
    return Person(name, age);
  }

  final String name;
  final int age;

  void sayHello() {
    print('Hi, my name is $name and I am $age years old.');
  }
}

void main() {
  print('=== Звичайний конструктор ===');
  final person1 = Person('Oleh', 29);
  person1.sayHello();

  print('\n=== Factory конструктор ===');
  final person2 = Person.create('Anna', 25);
  person2.sayHello();
}

class GoodPerson extends Person {
  GoodPerson(super.name, super.age);
}
