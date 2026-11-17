import 'package:book_search/util/constants.dart';
import 'package:book_search/views/home/components/body.dart';
import 'package:material_ui/material_ui.dart';

class HomeScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(), body: Body());
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search, color: kTextColor),
        ),
        SizedBox(width: kDefaultPadding / 2),
      ],
    );
  }
}
