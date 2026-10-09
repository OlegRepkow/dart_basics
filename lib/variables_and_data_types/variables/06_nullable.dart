// Nullable змінні та Null Safety (Dart 2.12+)
//
// Null Safety - система типів, що запобігає помилкам null.
// За замовчуванням змінні non-nullable (не можуть бути null).
// Тип з ? - nullable: String? може бути String або null.

// ignore_for_file: avoid_init_to_null, omit_local_variable_types, prefer_final_locals, dead_code, lines_longer_than_80_chars

void nullableExample() {
  // Non-nullable - не може бути null
  String name;
  // name = null; // Помилка: String не приймає null
  // print('name: $name');

  // Nullable - може бути null
  String? nickname;
  print('nickname: $nickname'); // null

  nickname = 'Anka';
  print('nickname: $nickname');

  nickname = null; // OK
  print('nickname: $nickname');

  // Оператор ?? - значення за замовчуванням якщо null
  String displayName = nickname ?? 'Гість';
  print('displayName: $displayName');

  // ??= - присвоїти тільки якщо поточна змінна null
  String? optional = null;
  optional ??= 'default';
  print('optional: $optional');

  // Оператор ?. - безпечний виклик (повертає null якщо об'єкт null)
  String? maybeText;
  int? length = maybeText?.length; // null, не викликає помилку
  print('length: $length');

  maybeText = 'Hello';
  length = maybeText.length;
  print('length: $length');

  // Оператор ! - примусове розпакування (тільки якщо впевнений що не null)
  String? sure = 'Definitely';

  String unwrapped = sure; // OK - sure не null "!"
  print('unwrapped: $unwrapped');
}

void main() => nullableExample();
