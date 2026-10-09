// =============================================================
// 🎭 ПОЛІМОРФІЗМ (Polymorphism)
// =============================================================
// Принцип: різні об'єкти можуть реагувати на один і той самий
// виклик методу по-різному, залежно від свого типу.
//
// Переваги:
//   • один інтерфейс - багато реалізацій
//   • гнучкий і розширюваний код
//   • спрощення роботи з колекціями різних типів
// =============================================================

abstract class Shape {
  double area();
}

class Circle extends Shape {
  Circle({required this.radius});
  final double radius;

  @override
  double area() => 3.14 * radius * radius;
}

class Rectangle extends Shape {
  Rectangle({required this.width, required this.height});

  final double width;
  final double height;

  @override
  double area() => width * height;
}

class Square extends Shape {
  Square({required this.side});
  final double side;

  @override
  double area() => side * side;
}
