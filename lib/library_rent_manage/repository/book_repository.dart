import '../model/book.dart';

abstract interface class BookRepositoy {
  Future<Book> insert(Book book);
  Future<Book> update(Book book);
  Future<List<Book>> findAll();
  Future<List<Book>> findAbyId(int id);
}
