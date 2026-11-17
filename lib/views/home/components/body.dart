import 'package:book_search/util/constants.dart';
import 'package:book_search/viewmodels/book_view_model.dart';
import 'package:book_search/views/details/details_screen.dart';
import 'package:book_search/views/home/components/categories.dart';
import 'package:book_search/views/home/components/item_card.dart';
import 'package:book_search/util/randomizer_color.dart';
import 'package:flutter/scheduler.dart';
import 'package:material_ui/material_ui.dart';
import 'package:provider/provider.dart';

class Body extends StatefulWidget {
  const new({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async => await context.read<BookViewModel>().fetchBooks(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bookViewModel = context.watch<BookViewModel>();
    return bookViewModel.loading
        ? Center(child: CircularProgressIndicator())
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                ),
                child: Text(
                  "Terror",
                  style: Theme.of(context).textTheme.headlineMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Categories(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                  ),
                  child: GridView.builder(
                    itemCount: bookViewModel.books.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                      mainAxisSpacing: kDefaultPadding,
                      crossAxisSpacing: kDefaultPadding,
                    ),
                    itemBuilder: (context, index) {
                      final color = randomizeColor();
                      return ItemCard(
                        book: bookViewModel.books[index],
                        color: color,
                        press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              book: bookViewModel.books[index],
                              color: color,
                            ),
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
