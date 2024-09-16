import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String price;
  final String image;
  const ProductCard(
      {super.key,
      required this.title,
      required this.price,
      required this.image});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(11, 11, 11, 1),
            borderRadius: BorderRadius.circular(50),
            border:
                Border.all(color: Color.fromRGBO(214, 54, 54, 1), width: 2)),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(247, 248, 249, 1)),
            ),
            const SizedBox(height: 5),
            Text(
              "$price",
              style: TextStyle(color: Color.fromRGBO(202, 204, 205, 1)),
            ),
            const SizedBox(height: 5),
            Image(
              image: AssetImage(image),
              height: 175,
            ),
          ],
        ),
      ),
    );
  }
}
