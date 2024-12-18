num return_sum(num a, num b) {
  return a + b;
}

void no_return_sum(num a, num b) {
  a + b;
}

// Named Parameters
String sayHi({
  required user,
  int age = 24,
  String country = 'home',
  int? year,
}) {
  return "Hi $user, you are $age and you come from $country ($year)";
}

// Optional Positional Parameters
String sayHello(String potato, [String? from = 'google', int? year]) =>
    "This is $from $potato! $year";

String say(String potato, int? year, [String? from = 'google']) {
// String say(String potato, [String? from = 'google', int? year]) {
  var result = "This is $from $potato!";
  if (year != null) {
    result = "This is $from $potato! $year";
  }
  return result;
}

void main() {
  var info = sayHi(country: 'korea', user: 'j');
  print(info);

  print(sayHello('dart'));

  print(say('dart', null));
  // print(say('dart'));
}
