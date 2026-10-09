void main() {
  final a = 10;
  final b = 5;

  final isEqual = a == b;
  final isNotEqual = a != b;
  final isGreater = a > b;
  final isLess = a < b;
  final isGreaterOrEqual = a >= b;
  final isLessOrEqual = a <= b;

  print('-----------------------------------');
  print('a дорівнює b $isEqual');
  print('a не дорівнює b $isNotEqual');
  print('a більше b $isGreater');
  print('a менше b $isLess');
  print('a більше або рівно b $isGreaterOrEqual');
  print('a менше або рівно b $isLessOrEqual');
  print('-----------------------------------');
}
