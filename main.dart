String capitalizeName(String? name) {
  if (name != null) {
    return name.toUpperCase();
  }
  return 'ANON';
}

String capitalizeName(String? name) =>
    name != null ? name.toUpperCase() : 'ANON';

String capitalizeName(String? name) => name?.toUpperCase() ?? 'ANON';

void main() {
  capitalizeName('j');
  capitalizeName(null);

  String? name;
  name ??= 'j';
  name = null;
  name ??= 'another';
  print(name);
}
