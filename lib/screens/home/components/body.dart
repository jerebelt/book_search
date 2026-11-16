import 'package:book_search/constants.dart';
import 'package:book_search/models/book.dart';
import 'package:book_search/screens/details/details_screen.dart';
import 'package:book_search/screens/home/components/categories.dart';
import 'package:book_search/screens/home/components/item_card.dart';
import 'package:book_search/util/randomizer_color.dart';
import 'package:material_ui/material_ui.dart';

class Body extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Terror",
            style: Theme.of(context).textTheme.headlineMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              itemCount: mockBooks.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                mainAxisSpacing: kDefaultPadding,
                crossAxisSpacing: kDefaultPadding,
              ),
              itemBuilder: (context, index) {
                final color = randomizeColor();
                return ItemCard(
                  book: mockBooks[index],
                  color: color,
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailsScreen(book: mockBooks[index], color: color),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
