class Book {
  String name;
  String author;
  String publisher;
  bool rentPossible;

  Book({
    required this.name,
    required this.author,
    required this.publisher,
    this.rentPossible = true,
  });
}
