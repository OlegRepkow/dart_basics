/// Функції що повертають значення - int, String, bool, String?

int add(int a, int b) {
  return a + b;
}

String fullName(String a, String b) {
  return '$a $b';
}

bool isAdult(int age) {
  return age >= 18;
}

String? findUser(String id) {
  return id == 'admin' ? 'Адмін' : null;
}

void notFound() {
  print('Не повертаємо значення');
}

void returnValuesExample() {
  print('↩️ Функції що повертають значення');

  print('10 + 5 = ${add(10, 5)}');
  print("Повне ім'я: ${fullName('Іван', 'Петренко')}");
  print('Повнолітній: ${isAdult(20)}');

  // String? - може бути null
  print('Користувач: ${findUser('admin') ?? 'не знайдено'}');
}

void main() => returnValuesExample();
