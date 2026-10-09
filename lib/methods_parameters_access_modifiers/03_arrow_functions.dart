/// Стрілочна функція - короткий синтаксис для однорядкових функцій

void arrowFunctionsExample() {
  print('🏹 Стрілочні функції');

  // => замість { return ... }
  print('square(5) = ${square(5)}, cube(3) = ${cube(3)}');

  // Зручно в колбеках: (x) => x * 2
  final doubled = [1, 2, 3, 4, 5].map((x) => x * 2).toList();
  print('Подвоєні числа: $doubled');
}

int square(int x) => x * x;
int cube(int x) => x * x * x;

void main() => arrowFunctionsExample();
