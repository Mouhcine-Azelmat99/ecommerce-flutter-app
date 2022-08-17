// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/widgets/rating.dart';
import 'package:flutter/material.dart';

class Product_home extends StatelessWidget {
  final String image;
  final String title;
  final double price;
  final int rating;
  const Product_home({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(6),
        padding: EdgeInsets.symmetric(vertical: 3, horizontal: 13),
        height: 200,
        width: 180,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              child: Image.asset("assets/images/${image}"),
            ),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Rating(rating: rating),
                      Text(
                        "${price} \$",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.red),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      color: Colors.deepOrangeAccent,
                      icon: Icon(Icons.shop_2_outlined))
                ],
              ),
            )
          ],
        ));
  }
}
