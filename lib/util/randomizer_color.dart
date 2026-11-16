import 'dart:math' as math;

import 'package:material_ui/material_ui.dart';

Color randomizeColor() {
  return Color.fromARGB(
    255,
    math.Random().nextInt(256),
    math.Random().nextInt(256),
    math.Random().nextInt(256),
  );
}
