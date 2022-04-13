import 'package:flutter/material.dart';
import 'package:project_diva2/Home/providers/news.dart';
import 'package:provider/provider.dart';
import './Main_providers/auth.dart';

import 'main_screen.dart';
import 'Home/screens/news_detail_screen.dart';
import 'auth.screen.dart';
import './Art/screens/art_product_screen.dart';
import './Art/screens/artist_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Navigation Drawer';
  @override
  AppTheme appTheme = AppTheme(isDark: false)
    ..accent1 = const Color(0xff1e2038)
    ..bg1 = const Color(0xfffff8e7);
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Auth(),
        ),
        ChangeNotifierProvider(create:(_)=> News()),
        Provider.value(value: appTheme),
      ],

      // Provider.value(
      //   value: appTheme,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BottomNavigation',
        initialRoute: "/",
        theme: appTheme.themeData,
        routes: {
          //测试用  "new_page": (context) => NewRoute(),
          "/": (context) => Nav(),
          NewsDetailScreen.routeName: (context) => NewsDetailScreen(),
          AuthScreen.routeName: (context) => AuthScreen(),
          ArtProductScreen.routeName:(context) =>ArtProductScreen(),
          ArtistScreen.routeName:(context) =>ArtistScreen(),
        },
      ),
    );
  }
}

class AppTheme {
  late Color bg1;
  late Color accent1;
  bool isDark;

  /// Default constructor
  AppTheme({required this.isDark});

  ThemeData get themeData {
    TextTheme:
    const TextTheme(headline6: TextStyle(fontFamily: 'ProximaNova'));

    /// Create a TextTheme and ColorScheme, that we can use to generate ThemeData
    TextTheme txtTheme =
        (isDark ? ThemeData.dark() : ThemeData.light()).textTheme;
    Color txtColor = txtTheme.bodyText1!.color as Color;
    ColorScheme colorScheme = ColorScheme(
        // Decide how you want to apply your own custom them, to the MaterialApp
        brightness: isDark ? Brightness.dark : Brightness.light,
        primary: accent1,
        primaryVariant: accent1,
        secondary: accent1,
        secondaryVariant: accent1,
        background: bg1,
        surface: bg1,
        onBackground: txtColor,
        onSurface: txtColor,
        onError: Colors.white,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        error: Colors.red.shade400);

    /// Now that we have ColorScheme and TextTheme, we can create the ThemeData
    var theme = ThemeData.from(textTheme: txtTheme, colorScheme: colorScheme)
        // We can also add on some extra properties that ColorScheme seems to miss
        .copyWith(
            buttonColor: accent1,
            cursorColor: accent1,
            highlightColor: accent1,
            toggleableActiveColor: accent1);

    /// Return the themeData which MaterialApp can now use
    return theme;
  }
}
