// Доступ до елементів списку за індексом

void main() {
  final list = List.generate(20, (index) => index);

  // Доступ до елементів за індексом (індексація починається з 0)
  print(list[0]);
  print(list[1]);
  print(list[2]);
  print(list[3]);
}
