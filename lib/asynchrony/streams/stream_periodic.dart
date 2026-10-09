void main() async {
  final periodicStream = Stream.periodic(
    Duration(milliseconds: 500),
    (i) => i,
  ).take(10);

  await for (final value in periodicStream) {
    print('periodic: $value');
  }
}
