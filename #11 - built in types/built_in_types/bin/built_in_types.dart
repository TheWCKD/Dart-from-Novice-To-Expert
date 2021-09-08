void main(List<String> arguments) {
  var runes = Runes('Hello')
      .map(
        (e) => e.toRadixString(16).padLeft(4, '0'),
      )
      .toList();
  print(runes);
  String hello = '\u{0048}\u{0065}\u{006c}\u{006c}\u{006f}';
  print(hello);
  String roseEmoji = '\u{1F339}';
  print(roseEmoji);
}
