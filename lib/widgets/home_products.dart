// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ecommerce_app/widgets/product_home.dart';
import 'package:flutter/material.dart';

class Home_Products extends StatelessWidget {
  const Home_Products({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        Product_home(
          image: "produt1.jpg",
          price: 190.0,
          rating: 3,
          title: "Tablet samsung",
        ),
        Product_home(
          image: "produt2.jpg",
          price: 300.0,
          rating: 3,
          title: "Ipad",
        ),
        Product_home(
          image: "produt4.jpg",
          price: 4000.0,
          rating: 3,
          title: "Pc portable",
        ),
        Product_home(
          image: "produt5.jpg",
          price: 3000.0,
          rating: 4,
          title: "Lenovo pc",
        ),
      ]),
    );
  }
}
