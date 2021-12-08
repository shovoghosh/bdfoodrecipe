import 'package:flutter/material.dart';
import 'package:bdfoodrecipe/data/data.dart';
import 'package:bdfoodrecipe/global/functions.dart';
import 'package:bdfoodrecipe/screens/details/details.dart';
import 'package:bdfoodrecipe/widgets/custom_grid_tile.dart';

class RiceScreen extends StatelessWidget {
  final List rice = bdfood["rice"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: customGridDelegate(),
        itemCount: rice.length,
        padding: EdgeInsets.all(15),
        itemBuilder: (BuildContext context, int index) {
          return CustomGridTile(
            onTap: () {
              Navigator.pushNamed(context, DetailScreen.path,
                  arguments: {"data": rice[index]});
            },
            category: rice[index]["category"],
            imageUrl: rice[index]["image"],
            title: rice[index]["title"],
            totalIngredients: countIngredients(rice[index]["ingredients"]),
          );
        });
  }
}
