# 🎯 Dart Basics - Основи програмування на Dart

Проєкт з вивчення основ мови програмування Dart. Містить практичні приклади для кожної теми.

## 📚 Структура

### 1. Змінні та типи даних - `variables_and_data_types`
- Основні типи даних: `int`, `double`, `String`, `bool`
- Колекції: `List`, `Set`, `Map`
- Спеціальні типи: `dynamic`, `var`
- Записи (`records`) та перелічення (`enums`)
- Оголошення та використання змінних (`var`, `final`, `const`, `late`, nullable)

**Файли:**
- `lib/variables_and_data_types/main.dart` - основні приклади
- `lib/variables_and_data_types/variables/` - робота зі змінними

### 2. Оператори та керуючі конструкції - `operators_and_control_flow`
- Математичні оператори
- Оператори порівняння та логічні оператори
- Оператори присвоєння
- Умовні конструкції: `if-else`, `switch` (statement та expression)
- Pattern matching
- Цикли: `for`, `while`, `do-while`
- `break`, `continue`, `return`

**Файли:**
- `lib/operators_and_control_flow/` - основні приклади

### 3. Методи. Вхідні параметри. Модифікатори доступу - `methods_parameters_access_modifiers`
- Основи функцій
- Типи параметрів: позиційні, іменовані, опціональні
- Значення за замовчуванням
- Повернення значень
- Стрілочні функції
- Область видимості змінних
- Обробка помилок

**Файли:**
- `lib/methods_parameters_access_modifiers/main.dart` - основні приклади

### 4. Колекції та робота з даними - `collections_and_data`
- Робота зі списками (`List`)
- Робота з множинами (`Set`)
- Робота з картами (`Map`)
- Ітерація, зміна, корисні методи та операції над колекціями

**Файли:**
- `lib/collections_and_data/list/` - приклади зі списками
- `lib/collections_and_data/set/` - приклади з множинами
- `lib/collections_and_data/map/` - приклади з картами

### 5. Основи ООП. Частина 1 - `oop_basics_part_1`
- Основи класів
- Конструктори
- Factory-конструктори

**Файли:**
- `lib/oop_basics_part_1/` - основні приклади

### 6. Основи ООП. Частина 2 - `oop_basics_part_2`
- Принципи програмування
- Принципи SOLID
- Інкапсуляція, наслідування, абстракція, поліморфізм

**Файли:**
- `lib/oop_basics_part_2/` - основні приклади
- `lib/oop_basics_part_2/OOP/` - приклади на принципи ООП

### 7. Асинхронність - `asynchrony`
- `Future` та асинхронні операції
- `Stream` та потоки даних

**Файли:**
- `lib/asynchrony/futures/` - приклади з Future
- `lib/asynchrony/streams/` - приклади зі Stream

## 🚀 Як запустити

### Вимоги
- Dart SDK версії 3.2.5 або вище

### Запуск прикладів

```bash
# Змінні та типи даних
dart run lib/variables_and_data_types/main.dart

# Оператори та керуючі конструкції
dart run lib/operators_and_control_flow/7_8_if_else_example.dart

# Методи. Вхідні параметри. Модифікатори доступу
dart run lib/methods_parameters_access_modifiers/main.dart

# Основи ООП. Частина 1
dart run lib/oop_basics_part_1/01_class_basics.dart
```

## 📁 Структура проєкту

```
dart_basics/
├── lib/
│   ├── variables_and_data_types/            # 1. Змінні та типи даних
│   ├── operators_and_control_flow/          # 2. Оператори та керуючі конструкції
│   ├── methods_parameters_access_modifiers/ # 3. Методи. Параметри. Модифікатори доступу
│   ├── collections_and_data/                # 4. Колекції та робота з даними
│   ├── oop_basics_part_1/                   # 5. Основи ООП. Частина 1
│   ├── oop_basics_part_2/                   # 6. Основи ООП. Частина 2
│   └── asynchrony/                          # 7. Асинхронність
├── pubspec.yaml
├── analysis_options.yaml
└── README.md
```

## 📝 Примітки

- Всі приклади містять детальні коментарі українською мовою

**Приємного навчання! 🎓**
