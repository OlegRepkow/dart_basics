// Умовні конструкції: if / else if / else та тернарний оператор

void main() {
  // Проста умова if-else
  final age = 18;
  if (age >= 18) {
    print('Повнолітній');
  } else {
    print('Неповнолітній');
  }

  // Той самий вибір через тернарний оператор ?:
  // умова ? значення_якщо_true : значення_якщо_false
  print(age >= 18 ? 'Повнолітній' : 'Неповнолітній');

  print('-----------------------------------');

  // Ланцюжок if / else if / else для кількох варіантів
  final temperature = 25;
  if (temperature > 30) {
    print('Дуже спекотно');
  } else if (temperature > 20) {
    print('Тепло');
  } else if (temperature > 10) {
    print('Прохолодно');
  } else {
    print('Холодно');
  }
}
