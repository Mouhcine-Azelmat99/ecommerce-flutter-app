// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ecommerce_app/widgets/rating.dart';
import 'package:flutter/material.dart';

class Products_list extends StatelessWidget {
  const Products_list({
    Key? key,
    required this.rating,
    required this.price,
    required this.name,
    required this.desc,
    required this.img,
  }) : super(key: key);
  final int rating;
  final double price;
  final String name;
  final String desc;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset.zero,
            blurRadius: 3,
          )
        ],
        color: Colors.white,
      ),
      child: Row(
        children: [
          Image.asset("assets/images/${img}"),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Rating(rating: 3),
                Flexible(
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    // softWrap: true,
                    desc,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${price} \$",
                      style: TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      // padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset.zero,
                            blurRadius: 3,
                          )
                        ],
                      ),
                      child: TextButton(
                        child: Text(
                          "order",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
