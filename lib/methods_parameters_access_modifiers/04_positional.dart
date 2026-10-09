/// Позиційні обов'язкові параметри - порядок важливий, всі треба передати

void greet(String name, String timeOfDay) =>
    print('Доброго $timeOfDay, $name!');

double area(double w, double h) => w * h;

void positionalRequiredExample() {
  print("🔹 Позиційні обов'язкові параметри");

  // Порядок: спочатку name, потім timeOfDay
  greet('User', 'ранку');

  // Функція повертає значення
  print('Площа: ${area(5.0, 3.0)}');
}

void main() => positionalRequiredExample();
