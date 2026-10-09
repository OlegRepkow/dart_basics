import 'dart:async';

void main() async {
  final controller = StreamController<int>();

  controller.stream.listen((value) => print('controller: $value'));

  controller.add(10);
  controller.add(20);

  await Future<void>.delayed(Duration(milliseconds: 500));

  await controller.close();
}
