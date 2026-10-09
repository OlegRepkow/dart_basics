import 'package:dart_basics/oop_basics_part_2/OOP/01_encapsulation/encapsulation.dart';

void main() {
  // Повний доступ до всіх полів - небезпечно
  final account = BankAccount(owner: 'Іван', balance: 1000, pin: '1234');

  account.deposit(500);
  account.withdraw(200, '1234');
  print('Власник: ${account.owner}, Баланс: ${account.balance}');
}
