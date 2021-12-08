import 'package:flutter/material.dart';
import 'package:bdfoodrecipe/data/data.dart';
import 'package:bdfoodrecipe/global/functions.dart';
import 'package:bdfoodrecipe/screens/details/details.dart';
import 'package:bdfoodrecipe/widgets/custom_grid_tile.dart';

class DesertScreen extends StatelessWidget {
  final List dessert = bdfood["dessert"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: customGridDelegate(),
        itemCount: dessert.length,
        padding: EdgeInsets.all(15),
        itemBuilder: (BuildContext context, int index) {
          return CustomGridTile(
            onTap: () {
              Navigator.pushNamed(context, DetailScreen.path,
                  arguments: {"category": "Dessert", "data": dessert[index]});
            },
            imageUrl: dessert[index]["image"],
            title: dessert[index]["title"],
            totalIngredients: countIngredients(dessert[index]["ingredients"]),
          );
        });
  }
}
