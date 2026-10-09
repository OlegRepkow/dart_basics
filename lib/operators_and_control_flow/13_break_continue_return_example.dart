void main() {
  for (var i = 0; i < 5; i++) {
    if (i == 2) {
      continue;
    }

    if (i == 4) {
      print('Крайня точка, вихідимо з циклу');
      break;
    }

    print('Поточне значення: $i');
  }

  print('Завершення функції.');
}
