import 'dart:async';

void main() async {
  final stream = generateStream();

  await for (final value in stream) {
    print('async*: $value');
  }
}

Stream<int> generateStream() async* {
  for (var i = 0; i < 3; i++) {
    await Future<void>.delayed(Duration(milliseconds: 400));
    yield i;
  }
}
