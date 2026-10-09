// late - відкладена ініціалізація
// Змінна обов'язково ініціалізується до першого читання (наприклад, у конструкторі)
// ignore_for_file: lines_longer_than_80_chars

// late - змінна, яка буде ініціалізована пізніше і може бути змінена
late String greeting;
// late final - змінна, яка буде ініціалізована пізніше і не може бути змінена
// late final String greeting;

void lateExample() {
  print('Greeting: $greeting is not initialized!');

  greeting = 'Hi'; // обов'язково присвоїти до першого читання
  // greeting = 'Hissss'; // Помилка: змінна не ініціалізована

  print('Greeting: $greeting');
}

void main() => lateExample();
