// ignore_for_file: noop_primitive_operations

// Enum - перелік фіксованих значень
// Простий enum та enhanced enum

// Простий enum
enum Status { inactive, loading, success, error }

// Enhanced enum з методами та властивостями
enum AppColor {
  primary('#2196F3'),
  secondary('#FF5722'),
  success('#4CAF50');

  const AppColor(this.hex);
  final String hex;
}

void enumsExample() {
  // Enum - перелік фіксованих значень
  final status = Status.inactive;
  // Enhanced enum - з методами та властивостями
  final color = AppColor.primary;

  // Enum - варіанти виведення
  print('Enum: $status');
  print('Enum: ${status.name}');
  print('Enum: ${status.index}');

  // Enhanced enum - варіанти виведення
  print('Enhanced enum: ${color.hex}');
  print('Enhanced enum: $color');
  print('Enhanced enum: ${color.name}');
  for (final c in AppColor.values) {
    print('  ${c.name}: ${c.hex}');
  }
}

void main() => enumsExample();
