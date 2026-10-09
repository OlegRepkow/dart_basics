// Зміна списку (додавання, видалення, вставка елементів)

void main() {
  final colors = ['red', 'green', 'blue'];

  print('Initial colors: $colors');

  // Додавання елемента в кінець списку
  colors.add('yellow');
  print('After adding yellow: $colors');

  // Видалення елемента за значенням
  colors.remove('red');
  print('After removing red: $colors');

  // Вставка елемента за індексом
  colors.insert(2, 'black');
  print('After inserting black: $colors');

  // Зміна елемента за індексом
  colors[3] = 'purple';
  print('After changing to purple: $colors');

  // Інші методи видалення
  // colors.removeAt(0);  // Видалення за індексом
  // colors.removeLast();  // Видалення останнього елемента
  // colors.removeRange(0, 10);  // Видалення діапазону
  // colors.removeWhere((e) => e.contains('gr'));  // Видалення за умовою
  // colors.clear();  // Очищення списку
}
