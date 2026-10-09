void main() {
  var number = 10;

  print('-----------------------------------');

  // number = number + 5;
  number += 5;

  print('Після додавання: $number');
  print('-----------------------------------');

  // number = number - 3;
  number -= 3;

  print('Після віднімання: $number');

  print('-----------------------------------');

  // number = number * 2;
  number *= 2;

  print('Після множення: $number');

  print('-----------------------------------');

  // number = number ~/ 5;
  number ~/= 5;
  print('Після цілочисельного ділення: $number');

  print('-----------------------------------');

  // number = number % 3;
  number %= 3;
  print('Після знаходження залишку: $number');

  print('-----------------------------------');
}
