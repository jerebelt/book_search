import 'package:book_search/util/constants.dart';
import 'package:book_search/models/book.dart';
import 'package:material_ui/material_ui.dart';

class BookTitleWithImage extends StatelessWidget {
  const new({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('asdasdasd', style: TextStyle(color: Colors.white)),
          Text(
            book.title,
            style: Theme.of(context).textTheme.headlineSmall!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Price\n"),
                    TextSpan(
                      text: "\$${book.price}",
                      style: Theme.of(context).textTheme.headlineSmall!
                          .copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: kDefaultPadding),
              Expanded(
                child: Hero(
                  tag: "${book.id}",
                  child: Image(
                    image: AssetImage('assets/images/book-image.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
