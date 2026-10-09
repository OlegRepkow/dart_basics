// Pattern matching (зіставлення зі зразком) у Dart

final List<String> names = ['John', 'Jane', 'Jim'];

void main() {
  // if-case перевіряє, чи значення відповідає зразку.
  // Тут ми дістаємо перший елемент списку у змінну firstName.
  if (names case [final String firstName, ...]) {
    print('Перше імʼя: $firstName');
  }

  print('-----------------------------------');

  // switch зі зразками для списку: кожен case описує форму списку.
  switch (names) {
    case []:
      print('Список порожній');
    case [final String only]:
      print('Один елемент: $only');
    case [final String first, _, _] when first.contains('Jo'):
      print('Три елементи, перший містить "Jo": $first');
    case [final String first, ...]:
      print('Список починається з: $first');
    default:
      print('Інший варіант');
  }

  print('-----------------------------------');

  // Деструктуризація списку: розкладаємо його на змінні.
  final [firstName, secondName, thirdName] = names;
  print('Деструктуризація: $firstName, $secondName, $thirdName');

  print('-----------------------------------');

  // Деструктуризація запису (record) з іменованими полями.
  final (:name, :age) = (name: 'Марія', age: 25);
  print('Запис: $name, $age років');

  print('-----------------------------------');

  // Зіставлення зі зразком обʼєкта: дістаємо поле name з кожного User.
  for (final User(:name) in users) {
    print('Користувач: $name');
  }
}

class User {
  User(this.name, this.age, this.email, this.phone);

  final String name;
  final int age;
  final String email;
  final String phone;
}

final users = [
  User('John', 20, 'john@example.com', '1234567890'),
  User('Jane', 21, 'jane@example.com', '0987654321'),
  User('Jim', 22, 'jim@example.com', '1122334455'),
];
