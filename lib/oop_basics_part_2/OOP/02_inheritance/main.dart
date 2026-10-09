import 'package:dart_basics/oop_basics_part_2/OOP/02_inheritance/inheritance.dart';

void main() {
  final warrior = Warrior(
    name: 'Артас',
    gender: Gender.male,
    age: 28,
    weapon: 'Меч',
    role: 'Воїн',
    armor: 50,
  );

  final mage = Mage(
    name: 'Джайна',
    gender: Gender.female,
    age: 24,
    weapon: 'Посох',
    role: 'Маг',
    element: 'Льоду',
  );

  final archer = Archer(
    name: 'Сільвана',
    gender: Gender.female,
    age: 30,
    weapon: 'Лук',
    role: 'Лучник',
    arrowCount: 30,
  );

  warrior.introduce();
  mage.introduce();
  archer.introduce();
}
