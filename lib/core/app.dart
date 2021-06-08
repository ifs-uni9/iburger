import 'package:flutter/material.dart';
import 'package:iBurger/screens/home_screen.dart';
import 'package:iBurger/screens/menu_screen.dart';
import 'package:iBurger/screens/product_details_screen.dart';
import 'package:iBurger/screens/signin_screen.dart';
import 'package:iBurger/screens/stock_screen.dart';
import 'package:iBurger/theme/theme.dart';

class AppIBurger extends StatelessWidget {
  const AppIBurger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "iBurger",
      initialRoute: "/signin",
      routes: {
        '/signin': (BuildContext context) => SignInScreen(),
        '/home': (BuildContext context) => HomeScreen(),
        '/menu': (BuildContext context) => MenuScreen(),
        '/product-details': (BuildContext context) => ProductDetailsScreen(),
        '/stock': (BuildContext context) => StockScreen(),
      },
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
    );
  }
}
