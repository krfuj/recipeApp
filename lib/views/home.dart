import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:movie_shop/models/recipe_api.dart';
import 'package:movie_shop/views/widgets/recipe_cart.dart';

import '../models/recipe.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  List<Recipe> _recipes;
  bool _isLoading = true;

  @override
  void initState(){
    super.initState();

    getRecipe();
  }

  Future<void> getRecipe() async {
    _recipes = await RecipeApi.getRecipe();
    setState(() {
      _isLoading = false;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.food_bank_sharp),
            SizedBox(width: 10,),
            Text('Recipe App')
          ],
        ),
      ),
      body: _isLoading ? Center(child: CircularProgressIndicator())
          :ListView.builder(
        itemCount: _recipes.length,
        itemBuilder: (context, index){
          return RecipeCard(
              title: _recipes[index].name,
              runTime: _recipes[index].totalTime,
              rating: _recipes[index].rating.toString(),
              thumbnailUrl: _recipes[index].images
          );
        },
              )
    );
  }
}