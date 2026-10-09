// =============================================================
// 🧬 НАСЛІДУВАННЯ (Inheritance)
// =============================================================
// Принцип: дочірній клас отримує поля та методи батьківського
// класу і може розширювати або перевизначати їх.
//
// Переваги:
//   • повторне використання коду
//   • логічна ієрархія типів
//   • спільний інтерфейс для різних об'єктів
// =============================================================

enum Gender { male, female }

class Warrior {
  Warrior({
    required this.name,
    required this.gender,
    required this.age,
    required this.weapon,
    required this.role,
    required this.armor,
  });
  final String name;
  final Gender gender;
  final int age;
  final String weapon;
  final String role;

  void introduce() {
    final g = gender == Gender.male ? 'Герой' : 'Героїня';
    print('$g: $name, $age років, роль: $role, зброя: $weapon');
  }

  void attack() => print('$name атакує за допомогою $weapon!');

  void defend() => print('$name займає оборонну позицію.');
  final int armor;

  void shieldBash() => print("$name б'є щитом! Ворог приголомшений.");

  void rage() => print('$name входить у лють! Атака подвоєна.');
}

class Mage {
  Mage({
    required this.name,
    required this.gender,
    required this.age,
    required this.weapon,
    required this.role,
    required this.element,
  });
  final String name;
  final Gender gender;
  final int age;
  final String weapon;
  final String role;

  void introduce() {
    final g = gender == Gender.male ? 'Герой' : 'Героїня';
    print('$g: $name, $age років, роль: $role, зброя: $weapon');
  }

  void attack() => print('$name атакує за допомогою $weapon!');

  void defend() => print('$name займає оборонну позицію.');
  final String element;

  void castSpell() => print('$name закликає магію $element!');

  void teleport() => print('$name телепортується у безпечне місце.');
}

class Archer {
  Archer({
    required this.name,
    required this.gender,
    required this.age,
    required this.weapon,
    required this.role,
    required this.arrowCount,
  });
  final String name;
  final Gender gender;
  final int age;
  final String weapon;
  final String role;

  void introduce() {
    final g = gender == Gender.male ? 'Герой' : 'Героїня';
    print('$g: $name, $age років, роль: $role, зброя: $weapon');
  }

  void attack() => print('$name атакує за допомогою $weapon!');

  void defend() => print('$name займає оборонну позицію.');
  final int arrowCount;

  void shoot() => print('$name випускає стрілу! Залишилось: ${arrowCount - 1}');

  void hide() => print('$name зникає в тіні.');
}
