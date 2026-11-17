import 'package:book_search/util/constants.dart';
import 'package:book_search/models/book.dart';
import 'package:book_search/views/details/components/add_to_cart.dart';
import 'package:book_search/views/details/components/book_title_with_image.dart';
import 'package:book_search/views/details/components/color_and_size.dart';
import 'package:book_search/views/details/components/counter_with_favourtie.dart';
import 'package:book_search/views/details/components/description.dart';
import 'package:material_ui/material_ui.dart';

class Body extends StatelessWidget {
  final Book book;
  final Color color;
  const new({super.key, required this.color, required this.book});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomScrollView(
      physics: ScrollPhysics.bouncing(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.3),
                padding: EdgeInsets.only(
                  top: size.height * 0.12,
                  left: kDefaultPadding,
                  right: kDefaultPadding,
                ),
                // height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
                  spacing: kDefaultPadding / 2,
                  children: [
                    ColorAndSize(),
                    Description(book: book),
                    CounterWithFavourite(),
                    Spacer(),
                    AddToCart(color: color),
                  ],
                ),
              ),
              BookTitleWithImage(book: book),
              Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
