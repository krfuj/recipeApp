import 'package:flutter/material.dart';
import 'package:movie_shop/views/widgets/recipe_cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.movie_outlined),
            SizedBox(width: 10,),
            Text('Movie Kando')
          ],
        ),
      ),
      body: RecipeCard(
          title: "My recipe",
          runTime: '1hr 30min',
          rating: '8.0',
          thumbnailUrl: 'https://unsplash.com/photos/meqVd5zwylI'),
    );
  }
}