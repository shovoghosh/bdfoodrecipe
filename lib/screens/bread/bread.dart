import 'package:flutter/material.dart';
import 'package:bdfoodrecipe/data/data.dart';
import 'package:bdfoodrecipe/global/functions.dart';
import 'package:bdfoodrecipe/screens/details/details.dart';
import 'package:bdfoodrecipe/widgets/custom_grid_tile.dart';

class BreadScreen extends StatelessWidget {
  final List bread = bdfood["bread"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: customGridDelegate(),
        itemCount: bread.length,
        padding: EdgeInsets.all(15),
        itemBuilder: (BuildContext context, int index) {
          return CustomGridTile(
            onTap: () {
              Navigator.pushNamed(context, DetailScreen.path,
                  arguments: {"category": "Bread", "data": bread[index]});
            },
            imageUrl: bread[index]["image"],
            title: bread[index]["title"],
            totalIngredients: countIngredients(bread[index]["ingredients"]),
          );
        });
  }
}
