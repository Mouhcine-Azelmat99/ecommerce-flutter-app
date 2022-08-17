// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/widgets/product_box.dart';
import 'package:ecommerce_app/widgets/products_list.dart';
import 'package:ecommerce_app/widgets/rating.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
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
                      Icons.arrow_back,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
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
                      Icons.home,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            // appbar end
            SizedBox(
              height: 10,
            ),
            Text(
              "All Products",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Wrap(
              children: [
                Products_Box(
                  rating: 4,
                  img: "produt1.jpg",
                  price: 800,
                  name: "Tablette Samsung",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
