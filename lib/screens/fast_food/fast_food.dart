import 'package:flutter/material.dart';
import 'package:bdfoodrecipe/data/data.dart';
import 'package:bdfoodrecipe/global/functions.dart';
import 'package:bdfoodrecipe/screens/details/details.dart';
import 'package:bdfoodrecipe/widgets/custom_grid_tile.dart';

class FastFoodScreen extends StatelessWidget {
  final List fastFood = bdfood["fast_food"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: customGridDelegate(),
        itemCount: fastFood.length,
        padding: EdgeInsets.all(15),
        itemBuilder: (BuildContext context, int index) {
          return CustomGridTile(
            onTap: () {
              Navigator.pushNamed(context, DetailScreen.path, arguments: {
                "category": "Fast Food",
                "data": fastFood[index]
              });
            },
            imageUrl: fastFood[index]["image"],
            title: fastFood[index]["title"],
            totalIngredients: countIngredients(fastFood[index]["ingredients"]),
          );
        });
  }
}
