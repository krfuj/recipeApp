import 'package:flutter/material.dart';
import 'package:movie_shop/views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        textTheme:TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        )
      ),
      home: HomePage(),
    );
  }
}
