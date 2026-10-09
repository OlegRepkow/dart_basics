// Зміна множини (додавання, видалення елементів)

void main() {
  final colors = {'red', 'green', 'blue'};

  print('Initial colors: $colors');

  // Додавання елемента
  colors.add('yellow');
  print('After adding yellow: $colors');

  // Додавання елемента, який вже існує (нічого не зміниться)
  colors.add('red');
  print('After adding red (already exists): $colors');

  // Видалення елемента
  colors.remove('red');
  print('After removing red: $colors');

  // Видалення неіснуючого елемента (нічого не зміниться)
  colors.remove('purple');
  print('After removing purple (does not exist): $colors');

  // Додавання кількох елементів
  colors.addAll({'purple', 'orange', 'pink'});
  print('After adding multiple colors: $colors');

  // Видалення елементів за умовою
  colors.removeWhere((color) => color.length > 5);
  print('After removing colors with length > 5: $colors');

  // Очищення множини
  colors.clear();
  print('After clearing: $colors');
}
