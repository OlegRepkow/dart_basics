void main() async {
  final iterableStream = Stream.fromIterable([1, 2, 3]);

  await for (final value in iterableStream) {
    print('fromIterable: $value');
  }
}
