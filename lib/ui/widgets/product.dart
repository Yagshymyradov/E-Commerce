import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Product extends StatelessWidget {
  Product({
    Key? key,
    required this.image,
    required this.productName,
    required this.price,
  }) : super(key: key);
  final image;
  final String productName;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.5,
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15), topLeft: Radius.circular(15)),
            child: Image.network(
              image,
              height: 150,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  maxLines: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(price),
              ],
            ),
          )
        ],
      ),
    );
  }
}
