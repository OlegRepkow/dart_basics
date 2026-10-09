/// Обробка помилок: try, catch, on, finally, throw

void errorHandlingExample() {
  print('⚠️ Обробка помилок');

  // catch - перехоплює будь-яку помилку
  try {
    div(10, 0);
  } catch (e) {
    print('catch: $e');
  }

  // throw - викидання помилки
  try {
    fail();
    print('success');
  } catch (e) {
    print('$e');
  }

  // on - тільки конкретний тип помилки
  try {
    validate(-5);
  } on ArgumentError catch (e) {
    print('ArgumentError: ${e.message}');
  }

  // finally - виконується завжди (cleanup)
  try {
    print('tru to open');
    open();
  } catch (e) {
    print('$e');
    return;
  } finally {
    print('cleanup');
  }

  //custom exception
  try {
    testException();
  } catch (e) {
    print('$e');
  }
}

int div(int a, int b) => a ~/ b;
void fail() => throw FormatException('Помилка формату');

void validate(int age) {
  if (age < 0 || age > 150) throw ArgumentError('Вік 0-150');
}

void open() => throw StateError('Ресурс недоступний');
void testException() => throw CustomException('Свій кастомний ексепшн');

void main() => errorHandlingExample();

class CustomException implements Exception {
  CustomException(this.message);

  final String message;

  @override
  String toString() => 'CustomException: $message';
}
