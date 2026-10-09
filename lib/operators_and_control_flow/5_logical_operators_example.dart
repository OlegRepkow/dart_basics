// ignore_for_file: dead_code

void main() {
  final hasMembership = true;
  final hasGuestPass = false;
  final gymIsOpen = true;

  final canEnterGym = (hasMembership || hasGuestPass) && gymIsOpen;
  final needsToBuyMembership = !hasMembership && !hasGuestPass;
  final gymIsClosed = !gymIsOpen;

  print('-----------------------------------');
  print('Чи можу я зайти у спортзал? $canEnterGym');
  print('Чи потрібно купити абонемент? $needsToBuyMembership');
  print('Чи спортзал закритий? $gymIsClosed');
  print('-----------------------------------');
}
