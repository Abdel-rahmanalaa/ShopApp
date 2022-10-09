import 'package:flutter/material.dart';
import 'package:storeapp/ui/screens/home/home_screen.dart';
import 'package:storeapp/ui/screens/home/see_all/show_new_arrival_screen.dart';
import 'package:storeapp/ui/screens/home/see_all/show_product_screen.dart';
import 'package:storeapp/ui/screens/home/show_category/show_category_screen.dart';
import 'package:storeapp/ui/screens/update/update_screen.dart';
import 'package:storeapp/ui/shared/consts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Store App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Gordita',
        scaffoldBackgroundColor: bgColor,
        textTheme: const TextTheme(
            bodyText2: TextStyle(
          color: blackColor54,
        )),
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        ShowNewArrivalScreen.id: (context) => const  ShowNewArrivalScreen(),
        ShowProductScreen.id: (context)=> const ShowProductScreen(),
        UpdateProductScreen.id: (context) => const UpdateProductScreen(),
        ShowCategoryScreen.id: (context) => const ShowCategoryScreen(),
      },
    );
  }
}
