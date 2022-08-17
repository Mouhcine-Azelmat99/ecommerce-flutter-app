// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_app/widgets/mydrawer.dart';
import 'package:ecommerce_app/widgets/products_list.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/categories_slide.dart';
import '../widgets/home_products.dart';
import '../widgets/product_home.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

final GlobalKey<ScaffoldState> _key = GlobalKey();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: MyDrawer(),
      body: Home_Page(),
    );
  }
}

class Home_Page extends StatelessWidget {
  const Home_Page({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: ListView(
        children: [
          // AppBar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset.zero,
                      blurRadius: 3,
                    )
                  ],
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.menu,
                    size: 30,
                  ),
                  onPressed: () {
                    print("drawer");
                    _key.currentState?.openDrawer();
                  },
                ),
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset.zero,
                          blurRadius: 3,
                        )
                      ],
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.category,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed("products");
                      },
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset.zero,
                          blurRadius: 3,
                        )
                      ],
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.shopping_cart_checkout_outlined,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed("checkout");
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
          // Search
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset.zero,
                  blurRadius: 3,
                )
              ],
            ),
            child: TextFormField(
              decoration: CustomeInputDec(
                "Search",
                "What of products you want",
                Icon(Icons.search),
              ),
            ),
          ),
          Categories(),
          SizedBox(
            height: 10,
          ),
          // Popular
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Text(
              "Popular Products",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Home_Products(),
          //Best promotion
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Text(
              "Best Promotions",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: Image.asset(
                      "assets/images/promotion1.jpg",
                      width: MediaQuery.of(context).size.width - 30,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: Image.asset(
                      width: MediaQuery.of(context).size.width - 30,
                      "assets/images/promotion2.jpg",
                    ),
                  ),
                ],
              )),
          // Recent products
          SizedBox(
            height: 15,
          ),
          Expanded(
              child: Column(
            children: [
              Products_list(
                rating: 4,
                img: "produt1.jpg",
                price: 800,
                name: "Tablette Samsung",
                desc: "Product description",
              ),
            ],
          ))
        ],
      ),
    );
  }
}
