import 'package:car_rent/page_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.black.toMaterialColor(),
        brightness: Brightness.light,
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.transparent,
          modalElevation: 0,
          elevation: 0,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.transparent,
        ),
        canvasColor: Color.fromRGBO(228, 192, 80, 1),
      ),
      onGenerateRoute: PageRouter.generateRoute,
    );
  }
}

extension ColorFS on Color {
  /// converts a normal [Color] to material color with proper shades mixed
  /// with base color (white).
  MaterialColor toMaterialColor() {
    List strengths = <double>[.05];
    Map swatch = <int, Color>{};

    for (var i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (final strength in strengths) {
      final ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        red + ((ds < 0 ? red : (255 - red)) * ds).round(),
        green + ((ds < 0 ? green : (255 - green)) * ds).round(),
        blue + ((ds < 0 ? blue : (255 - blue)) * ds).round(),
        1,
      );
    }
    return MaterialColor(value, swatch as Map<int, Color>);
  }

  /// Returns [Color] from [this] shaded to [shade] and mixed with white as
  /// base color. This assumes [this] color to be a shade of 700.
  Color shade(int shade) {
    final ds = 0.5 - (shade / 1000);
    return Color.fromRGBO(
      red + ((ds < 0 ? red : (255 - red)) * ds).round(),
      green + ((ds < 0 ? green : (255 - green)) * ds).round(),
      blue + ((ds < 0 ? blue : (255 - blue)) * ds).round(),
      1,
    );
  }

  /// Returns hex string of [this] color
  String get hexString => '#'
      '${red.toRadixString(16)}'
      '${green.toRadixString(16)}'
      '${blue.toRadixString(16)}';

  /// allows to create a tween that start with [this] color
  /// and ends with [color].
  ColorTween tweenTo(Color color) => ColorTween(begin: this, end: color);

  /// allows to create a tween that start with [color] color
  /// and ends with [this].
  ColorTween tweenFrom(Color color) => ColorTween(begin: color, end: this);
}
