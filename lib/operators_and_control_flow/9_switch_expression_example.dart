void main() {
  final day = 'понеділок';

  final willGoToWork = switch (day) {
    'субота' || 'неділя' => false,
    _ => true,
  };

  if (willGoToWork) {
    print('Сьогодні піду на роботу');
  } else {
    print('Сьогодні не піду на роботу');
  }
}
