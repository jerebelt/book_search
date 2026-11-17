import 'package:book_search/models/book.dart';
import 'package:book_search/services/book_service.dart';
import 'package:material_ui/material_ui.dart';

class BookViewModel extends ChangeNotifier {
  final BookService _bookService = BookService();
  List<Book> _books = [];
  bool _loading = false;

  List<Book> get books => _books;
  bool get loading => _loading;

  Future<void> fetchBooks() async {
    _loading = true;
    notifyListeners();
    _books = await _bookService.fetchBooks();
    _loading = false;
    notifyListeners();
  }
}
