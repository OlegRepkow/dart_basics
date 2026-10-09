// Операції над картами (об'єднання карт)

void main() {
  final mapA = {'a': 1, 'b': 2, 'c': 3, 'd': 4};
  final mapB = {'c': 30, 'd': 40, 'e': 5, 'f': 6};

  print('Map A: $mapA');
  print('Map B: $mapB');

  // Об'єднання карт (останній значення перезапише попередні)
  final mergedMap = {...mapA, ...mapB};
  print('Merged map (A + B): $mergedMap');

  // Об'єднання карт (через створення нової карти)
  final mergedMap2 = {}
    ..addAll(mapA)
    ..addAll(mapB);
  print('Merged map (A + B) var2: $mergedMap2');
}
