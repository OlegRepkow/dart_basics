// Операції над множинами (об'єднання, перетин, різниця)

void main() {
  final setA = {1, 2, 3, 4, 5};
  final setB = {4, 5, 6, 7, 8};

  print('Set A: $setA');
  print('Set B: $setB');

  // Об'єднання множин (union)
  final union = setA.union(setB);
  print('Union (A ∪ B): $union');

  // Перетин множин (intersection)
  final intersection = setA.intersection(setB);
  print('Intersection (A ∩ B): $intersection');

  // Різниця множин (difference)
  final difference = setA.difference(setB);
  print('Difference (A - B): $difference');
}
