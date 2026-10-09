/// Дефолтні значення - параметр має значення, якщо не передано

void info(String name, [int age = 18, String city = 'Невідомо']) =>
    print('$name, $age, $city');

void app({String theme = 'light', String lang = 'uk', bool notify = true}) =>
    print('theme=$theme lang=$lang notify=$notify');

void defaultValuesExample() {
  print('⚙️ Значення по дефолту');

  // Позиційні з дефолтом: age=18, city='Невідомо'
  info('Тарас');
  info('Оксана', 28);
  info('Дмитро', 35, 'Київ');

  // Іменовані з дефолтом
  app();
  app(theme: 'dark');
}

void main() => defaultValuesExample();
