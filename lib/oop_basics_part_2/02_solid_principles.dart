// ignore_for_file: lines_longer_than_80_chars

// ===== SOLID ПРИНЦИПИ =====
//
// 5 принципів для гнучкого ООП-дизайну:
// S - Single Responsibility (єдина відповідальність, лише одна причина для зміни)
// O - Open/Closed (відкритий/закритий, можна розширювати, але не змінювати)
// L - Liskov Substitution (підстановка Лісков, дочірній клас повинен працювати скрізь, де працює батьківський)
// I - Interface Segregation (розділення інтерфейсів, краще багато маленьких інтерфейсів, ніж один великий)
// D - Dependency Inversion (інверсія залежностей, залежність від абстракцій, а не від конкретних класів)

// ===== S - Single Responsibility =====
// Клас повинен мати лише одну причину для зміни.

// ❌ Погано - клас робить все
class UserManagerBad {
  void saveToDatabase(String name) => print('Saving $name to DB');
  void sendEmail(String email) => print('Sending email to $email');
  void generateReport() => print('Generating report');
}

// ✅ Добре - кожен клас відповідає за одне
class UserRepository {
  void save(String name) => print('Saving $name to DB');
}

class EmailService {
  void send(String email) => print('Sending email to $email');
}

// ===== O - Open/Closed =====
// Клас відкритий для розширення, закритий для модифікації.

// ❌ Погано - щоб додати нову знижку, треба змінювати існуючий клас
class DiscountCalculatorBad {
  double apply(double price, String type) {
    if (type == 'regular') return price * 0.9;
    if (type == 'vip') return price * 0.7;
    // Щоб додати student - треба лізти сюди і міняти код ↑
    return price;
  }
}

// ✅ Добре - додаємо нову знижку через новий клас, не чіпаючи існуючі
abstract class Discount {
  double apply(double price);
}

class RegularDiscount extends Discount {
  @override
  double apply(double price) => price * 0.9; // 10%
}

class VipDiscount extends Discount {
  @override
  double apply(double price) => price * 0.7; // 30%
}

// Додаємо нову знижку БЕЗ зміни існуючого коду
class StudentDiscount extends Discount {
  @override
  double apply(double price) => price * 0.8; // 20%
}

// ===== L - Liskov Substitution =====
// Дочірній клас повинен працювати скрізь, де працює батьківський.

// ❌ Погано - батьківський клас обіцяє що всі Bird вміють літати,
// але Penguin кидає помилку. Це ламає контракт - код, який працює
// з Bird, не може безпечно викликати fly() для будь-якого Bird.
class BirdBad {
  void fly() => print('Лечу!');
}

class PenguinBad extends BirdBad {
  @override
  void fly() => throw Exception('Не вмію літати!'); // 💥
}

void makeFly(BirdBad bird) {
  bird.fly(); // Очікуємо що будь-який Bird полетить
}
// makeFly(PenguinBad()) - 💥 Error! Пінгвін не може літати

// ✅ Добре - замість fly() використовуємо move(), який має сенс для ВСІХ птахів.
// Тепер будь-який Bird можна безпечно підставити - контракт не ламається.
class Bird {
  Bird(this.name);
  String name;
  void move() => print('$name рухається');
}

class Sparrow extends Bird {
  Sparrow() : super('Горобець');
  @override
  void move() => print('$name летить 🐦');
}

class Penguin extends Bird {
  Penguin() : super('Пінгвін');
  @override
  void move() => print('$name плаває 🐧');
}

void makeBirdMove(Bird bird) => bird.move(); // ✅ працює з будь-яким Bird

// ===== I - Interface Segregation =====
// Краще багато маленьких інтерфейсів, ніж один великий.

// ❌ Погано - один інтерфейс для всього
abstract class WorkerBad {
  void work();
  void eat();
  void sleep();
}

// ✅ Добре - розділені інтерфейси
abstract class Workable {
  void work();
}

abstract class Eatable {
  void eat();
}

class HumanWorker implements Workable, Eatable {
  @override
  void work() => print('Людина працює');
  @override
  void eat() => print('Людина їсть');
}

class RobotWorker implements Workable {
  @override
  void work() =>
      print('Робот працює'); // Робот не їсть - і не мусить реалізовувати eat()
}

// ===== D - Dependency Inversion =====
// Залежність від абстракцій, а не від конкретних класів.

// ❌ Погано - клас залежить від конкретної реалізації
class AppBad {
  final _logger = ConsoleLoggerBad(); // жорстка привʼязка до конкретного класу

  void run() => _logger.log('App started');
  // Щоб замінити логер на FileLogger - треба міняти код AppBad
}

class ConsoleLoggerBad {
  void log(String message) => print('📋 $message');
}

// ✅ Добре - залежність від абстракції
abstract class Logger {
  void log(String message);
}

class ConsoleLogger implements Logger {
  @override
  void log(String message) => print('📋 $message');
}

class App {
  App(this._logger); // залежить від абстракції Logger, не від конкретного класу
  final Logger _logger;

  void run() => _logger.log('App started');
}

void main() {
  print('=== Single Responsibility ===');
  UserRepository().save('Олег');
  EmailService().send('oleh@example.com');

  print('\n=== Open/Closed ===');
  final discounts = <Discount>[
    RegularDiscount(),
    VipDiscount(),
    StudentDiscount(),
  ];
  for (final d in discounts) {
    print('Ціна 100 зі знижкою: ${d.apply(100)}');
  }

  print('\n=== Liskov Substitution ===');
  makeBirdMove(Sparrow());
  makeBirdMove(Penguin());

  print('\n=== Interface Segregation ===');
  HumanWorker().work();
  RobotWorker().work();

  print('\n=== Dependency Inversion ===');
  App(ConsoleLogger()).run();
}
