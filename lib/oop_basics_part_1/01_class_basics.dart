// ignore_for_file: lines_longer_than_80_chars, prefer_initializing_formals

// Основи класів: створення класу, конструктори, поля, методи
//
// Клас - це шаблон (креслення) для створення обʼєктів.
// Обʼєкт - це конкретний екземпляр класу з реальними даними.
//
// Аналогія: клас - це креслення будинку, а обʼєкт - це конкретний побудований будинок.

/// Повна версія конструктора з initializer list
/// Тут ми явно присвоюємо кожен параметр відповідному полю через ":"
class HeroFull {
  HeroFull({
    required String name,
    required String gender,
    required String skinColor,
    required double height,
    required String weapon,
  })  : name = name,
        gender = gender,
        skinColor = skinColor,
        height = height,
        weapon = weapon {
    // Тіло конструктора - виконується ПІСЛЯ ініціалізації полів
    // Тут можна додати додаткову логіку після створення обʼєкту
  }

  String name;
  String gender;
  String skinColor;
  double height;
  String weapon;

  void run() {
    print('$name is running!');
  }
}

/// Спрощена версія - syntactic sugar (синтаксичний цукор)
/// Dart автоматично присвоює параметри полям через "this."
/// Результат ідентичний HeroFull, але коду значно менше
///
///
/// Якщо поля класу є публічними та мають ті самі імена, що й вхідні параметри,
/// Dart дозволяє скоротити запис: Person(this.name, this.age)
///
///required, nullable, default values
class HeroSugar {
  HeroSugar({
    required this.name,
    required this.gender,
    required this.skinColor,
    required this.height,
    required this.weapon,
  }) {
    // Тіло конструктора - можна додати додаткову логіку
  }

  String name;
  String gender;
  String skinColor;
  double height;
  String weapon;

  void run() {
    print('$name is running!');
  }
}

void classBasicsExample() {
  print('🏰 Повна версія конструктора:');
  final hero1 = HeroFull(
    name: 'John Doe',
    gender: 'man',
    skinColor: 'white',
    height: 1.90,
    weapon: 'gun',
  );

  hero1.run();

  print('\n🍬 Спрощена версія (syntactic sugar):');
  final hero2 = HeroSugar(
    name: 'Mary Jane',
    gender: 'woman',
    skinColor: 'black',
    height: 1.75,
    weapon: 'knife',
  );
  hero2.run();
}

void main() => classBasicsExample();
