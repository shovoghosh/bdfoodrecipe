import 'package:bdfoodrecipe/screens/bread/bread.dart';
import 'package:bdfoodrecipe/screens/dal/dal.dart';
import 'package:bdfoodrecipe/screens/dessert/dessert.dart';
import 'package:bdfoodrecipe/screens/drink/drink.dart';
import 'package:bdfoodrecipe/screens/fast_food/fast_food.dart';
import 'package:bdfoodrecipe/screens/non_veg/non_veg.dart';
import 'package:bdfoodrecipe/screens/pickle/pickle.dart';
import 'package:bdfoodrecipe/screens/pitha_cake/pitha_cake.dart';
import 'package:bdfoodrecipe/screens/rice/rice.dart';
import 'package:bdfoodrecipe/screens/veg/veg.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String path = "HomeScreen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          centerTitle: true,
          title: Text("BD FOOD RECIPE"),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.favorite))],
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.black87,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/non_veg/1.jpg",
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                ListTile(
                  onTap: () {},
                  title: Text(
                    "My Recipe",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.white,
                  height: 0,
                ),
                ListTile(
                  onTap: () {},
                  title: Text(
                    "Favorite",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.white,
                  height: 0,
                ),
                ListTile(
                  onTap: () {},
                  title: Text(
                    "Cooked",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.white,
                  height: 0,
                ),
                ListTile(
                  onTap: () {},
                  title: Text(
                    "Tips",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
                Container(
                  color: Colors.black54,
                  width: double.infinity,
                  height: 60,
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "More",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Search Recipe",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.rate_review,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Rate Us",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.update,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Update",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  title: Text(
                    "About us",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: TabBar(
                  isScrollable: true,
                  unselectedLabelColor: Colors.redAccent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.redAccent, Colors.orangeAccent]),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.redAccent),
                  tabs: [
                    Tab(child: Text("Rice")),
                    Tab(child: Text("Bread/Cookie")),
                    Tab(child: Text("Fast Food")),
                    Tab(child: Text("Veg")),
                    Tab(child: Text("Non Veg")),
                    Tab(child: Text("Dal")),
                    Tab(child: Text("Drink")),
                    Tab(child: Text("Desert")),
                    Tab(child: Text("Pitha/Cake")),
                    Tab(child: Text("Pickle")),
                  ]),
            ),
            Expanded(
              child: TabBarView(children: [
                RiceScreen(),
                BreadScreen(),
                FastFoodScreen(),
                VegScreen(),
                NonVegScreen(),
                DalScreen(),
                DrinkScreen(),
                DesertScreen(),
                PithaCakeScreen(),
                PickleScreen()
              ]),
            )
          ],
        ),
      ),
    );
  }
}
