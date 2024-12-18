// List<int> reverseListOfNumners(List<int> list) {
//   var reversed = list.reversed;
//   return reversed.toList();
// }

typedef ListOfInts = List<int>;

ListOfInts reverseListOfNumners(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

void main() {
  print(reverseListOfNumners([1, 2, 3]));
}
