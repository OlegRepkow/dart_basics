// Оголошення змінної через var
// Тип визначається автоматично (type inference) за початковим значенням

void varExample() {
  var city = 'Kyiv'; // city має тип String
  var temperature = 22.5; // temperature має тип double
  var date = DateTime.now();

  // Можна змінювати значення змінної після оголошення
  city = 'Lviv';
  temperature = 20.0;
  date = DateTime.now().add(const Duration(hours: 1));

  //неможливо присвоїти інший тип змінній
  // city = 1;

  print('City: $city');
  print('Temperature: $temperature');
  print('Date: $date');
}

void main() => varExample();
