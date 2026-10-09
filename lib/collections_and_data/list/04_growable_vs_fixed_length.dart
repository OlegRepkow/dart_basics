// Списки змінної та фіксованої довжини

void main() {
  // Список змінної довжини (можна додавати/видаляти елементи)
  final growableList = List.generate(20, (index) => index);
  print(growableList);

  // Список фіксованої довжини (не можна змінювати розмір)
  final fixedLengthList = List.filled(20, 0);
  print(fixedLengthList);
}
