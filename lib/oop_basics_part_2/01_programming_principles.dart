// ignore_for_file: lines_longer_than_80_chars

// ===== ПРИНЦИПИ ПРОГРАМУВАННЯ =====
//
// 💡 Принципи програмування - це ідеї, сформовані досвідченими розробниками,
// які допомагають уникати відомих помилок та писати якісний код.

// ===== DRY (Don't Repeat Yourself) =====
// Не дублюй код. Якщо логіка повторюється - винеси її в окрему функцію/клас.

// ❌ Погано - дублювання
class ReportBad {
  void printUserReport(String name, int age) {
    print('--- Звіт ---');
    print('Імʼя: $name');
    print('Вік: $age');
    print('-------------');
  }

  void printAdminReport(String name, int age) {
    print('--- Звіт ---');
    print('Імʼя: $name');
    print('Вік: $age');
    print('Роль: admin');
    print('-------------');
  }
}

// ✅ Добре - спільна логіка винесена
class ReportGood {
  void _printHeader() => print('--- Звіт ---');
  void _printFooter() => print('-------------');

  void printUserReport(String name, int age) {
    _printHeader();
    print('Імʼя: $name, Вік: $age');
    _printFooter();
  }

  void printAdminReport(String name, int age) {
    _printHeader();
    print('Імʼя: $name, Вік: $age, Роль: admin');
    _printFooter();
  }
}

// ===== KISS (Keep It Simple, Stupid) =====
// Простота краща за складність. Не ускладнюй без потреби.

// ❌ Погано - надмірно складно
bool isAdultBad(int age) {
  if (age >= 18) {
    return true;
  } else {
    return false;
  }
}

// ✅ Добре - просто і зрозуміло
bool isAdultGood(int age) => age >= 18;

// ===== YAGNI (You Aren't Gonna Need It) =====
// Не пиши код "на майбутнє". Реалізуй тільки те, що потрібно зараз.

// ❌ Погано - додали купу методів "про всяк випадок"
class UserBad {
  UserBad(this.name);
  final String name;

  void sendEmail() {} // поки не потрібно
  void sendSms() {} // поки не потрібно
  void exportToPdf() {} // поки не потрібно
}

// ✅ Добре - тільки те, що реально використовується
class UserGood {
  UserGood(this.name);
  final String name;
}

void main() {
  print('=== DRY ===');
  ReportGood().printUserReport('Олег', 29);
  ReportGood().printAdminReport('Анна', 25);

  print('\n=== KISS ===');
  print('Is 20 adult? ${isAdultGood(20)}');
  print('Is 15 adult? ${isAdultGood(15)}');

  print('\n=== YAGNI ===');
  final user = UserGood('Олег');
  print('User: ${user.name}');
}
