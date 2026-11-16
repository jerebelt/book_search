import 'package:book_search/constants.dart';
import 'package:book_search/models/book.dart';
import 'package:book_search/util/randomizer_color.dart';
import 'package:material_ui/material_ui.dart';

class ItemCard extends StatelessWidget {
  final Book book;
  final Function() press;
  final Color color;

  const ItemCard({
    super.key,
    required this.book,
    required this.press,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${book.id}",
                child: Image(image: AssetImage('assets/images/book-image.png')),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(book.title, style: TextStyle(color: kTextLightColor)),
          ),
          Text(
            "\$${book.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
