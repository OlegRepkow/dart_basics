/// Область видимості - глобальна, локальна, блочна

// Глобальна змінна - доступна всюди в файлі
int global = 42;

void scopeExample() {
  print('🔍 Область видимості змінних');

  final local = 'локальна';
  print('global=$global, local=$local');

  // Змінні в блоці {} - тільки всередині блоку
  for (var i = 0; i < 2; i++) {
    final inBlock = 'блок $i';
    print(inBlock);
  }
  // print(inBlock); - помилка, недоступна тут

  modifyGlobal();
  print('global після зміни: $global');
}

void modifyGlobal() {
  global++;
}

void main() => scopeExample();
