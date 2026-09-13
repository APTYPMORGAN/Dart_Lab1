String greet(String name) {
  return 'Привет, $name!';
}

int square(int x) => x * x;
String greet2(String name2) => 'Привет, $name2!';
void describePet({
  required String name,
  String species = 'кот',
  int age = 0,
}) {
  print('$name - $species, возраст $age');
}
String repeat(String text, [int times = 2]) {
  String result = '';
  for (int i = 0; i < times; i++) {
    result += text;
  }
  return result;
}

void main() {
  String name = 'Артур';
  int age = 17;
  double height = 1.78;
  bool isStudent = true;

  print(name);
  print(age);
  print(height);
  print(isStudent);

  print('Привет, $name! Тебе $age лет.');
  print('Через 5 лет тебе будет ${age + 5} лет.');
  print('Рост: ${height} м, студент: $isStudent');

  var score = 95;
  var language = 'Dart';
  print('$language: $score');

  final int releaseYear = 2011;
  const String appName = 'Lab1';
  final int startYear = 2026;
  print('$appName started in $startYear');

  String? nickname = null;
  String display = nickname ?? 'Аноним';
  print(display);

  List<String> fruits = ['яблоко', 'банан', 'груша'];
  fruits.add('апельсин');
  print(fruits[0]);
  print(fruits.length);

  Map<String, dynamic> person = {'name': 'Артур', 'age': '17'};
  print(person['name']);
  person['city'] = 'Волжский';

  Set<int> ids = {1, 2, 3, 2, 1};
  print(ids);
  print(ids.length);

  List<String> fruits2 = ['яблоко', 'банан', 'груша'];
  for (var fruit in fruits2) {
    print(fruit);
  }

  print(greet('Артур'));
  print(greet('Артём'));
  print(square(5));
  print(greet2('Гриша'));
  describePet(name: 'Барсик', age: 3);
  describePet(name: 'Шарик', species: 'пёс');
  print(repeat('ха', 3));
  print(repeat('ха'));
  List<int> numbers = [3, 1, 4, 1, 5, 9];
  numbers.sort((a, b) => b - a);
  print(numbers);
  List<String> names = ['Артём', 'Мария', 'Иван'];
  List<String> upper = names.map((name) => name.toUpperCase()).toList();
  print(upper);
  List<String> longNames = names.where ((name) => name.length > 4).toList();
  print(longNames);
  int score2 = 85;
  String grade;
  if (score2 >= 90){
     grade = 'A';
  } else if (score2 >= 75) {
    grade = 'B';
  } else {
    grade = 'C';
  }
  print(grade);
  String result = score >= 60 ? 'Сдал' : 'Нe сдал';
  print(result);
  for (int i = 0; i < 5; i++){
    print(i);
  }
  List<String> fruits3 = ['яблоко', 'банан', 'груша'];
  for (var fruit2 in fruits3){
    print(fruit2);
  }
  int n = 0;
  while (n < 3){
    print(n);
    n++;
  }
  String day = 'Чт';
  switch (day) {
    case 'Сб':
    case 'Вс':
      print('Выходной');
      break;
    case 'Пн':
      print('Начало недели');
      break;
    case 'Пт':
      print('Конец рабочей недели');
      break;
    default:
      print('Рабочий день');
  }
}