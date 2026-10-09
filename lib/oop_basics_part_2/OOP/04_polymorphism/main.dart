import 'package:dart_basics/oop_basics_part_2/OOP/04_polymorphism/polymorphism.dart';

void main() {
  final circle = Circle(radius: 5);
  final rectangle = Rectangle(width: 4, height: 6);
  final square = Square(side: 3);

  _printArea(circle);
  _printArea(rectangle);
  _printArea(square);
}

void _printArea(Shape shape) {
  print('Площа: ${shape.area()}');
}
