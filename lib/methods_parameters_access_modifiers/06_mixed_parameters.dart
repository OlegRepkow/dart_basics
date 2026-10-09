/// Змішані параметри - позиційні обов'язкові + [опціональні] + {іменовані}

void send(String msg, String to, [bool isUrgent = false]) =>
    print('${isUrgent ? '[ТЕРМІНОВО] ' : ''}$to: $msg');

void book(String from, String to, {bool priority = false, String? seatClass}) {
  var t = '$from → $to';
  if (priority) t += ' (пріоритет)';
  if (seatClass != null) t += ' [$seatClass]';
  print(t);
}

void mixedParametersExample() {
  print('🔄 Змішані параметри');

  // Позиційні + позиційний опціональний [isUrgent]
  send('Привіт!', 'Олексій');
  send('Як справи?', 'Марина', true);

  // Позиційні + іменовані опціональні
  book('Київ', 'Львів', priority: true, seatClass: 'business');
  book('Одеса', 'Харків');
}

void main() => mixedParametersExample();
