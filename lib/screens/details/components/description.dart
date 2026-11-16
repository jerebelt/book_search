import 'package:book_search/constants.dart';
import 'package:book_search/models/book.dart';
import 'package:material_ui/material_ui.dart';

class Description extends StatelessWidget {
  const new({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(book.description, style: TextStyle(height: 1.5)),
    );
  }
}
