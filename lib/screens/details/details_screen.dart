import 'package:book_search/constants.dart';
import 'package:book_search/models/book.dart';
import 'package:book_search/screens/details/components/body.dart';
import 'package:material_ui/material_ui.dart';

class DetailsScreen extends StatelessWidget {
  const new({super.key, required this.book, required this.color});

  final Book book;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: buildAppbar(context),
      body: Body(book: book, color: color),
    );
  }

  AppBar buildAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: color,
      elevation: 0,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(Icons.arrow_back, color: Colors.white),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search, color: Colors.white),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart, color: Colors.white),
        ),
        SizedBox(width: kDefaultPadding / 2),
      ],
    );
  }
}
