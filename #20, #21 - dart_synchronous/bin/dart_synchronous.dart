void main() {
  Iterable iterable = Iterable<int>.generate(3, (x) => x + 1);
  for (var item in iterable) {
    print(item);
  }
  iterable.forEach(print);
}
