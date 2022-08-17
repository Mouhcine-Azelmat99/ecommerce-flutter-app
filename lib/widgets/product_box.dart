import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/widgets/rating.dart';
import 'package:flutter/material.dart';

class Products_Box extends StatelessWidget {
  const Products_Box({
    Key? key,
    required this.rating,
    required this.name,
    required this.img,
    required this.price,
  }) : super(key: key);
  final int rating;
  final double price;
  final String name;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width / 2 - 40,
      // height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [kshadow],
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/images/${img}"),
          SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Rating(rating: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${price}\$",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart_checkout_outlined),
                iconSize: 30,
                color: Colors.deepOrangeAccent,
              )
            ],
          ),
        ],
      ),
    );
  }
}
