import 'dart:ffi';

import 'package:first/list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductDetailsPage extends StatelessWidget {
  final Map<String, Object> product;

  const ProductDetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(11, 11, 11, 1),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: height * 0.45,
            width: width * 1,
            decoration: BoxDecoration(color: Color.fromRGBO(199, 80, 80, 0)),
            child: Image(
              image: AssetImage(product["imageurl"] as String),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                      height: 170,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(226, 38, 38, 1),
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 170 * 0.1,
                            left: 20,
                            child: Text(
                              product["title"] as String,
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(241, 237, 237, 1)),
                            ),
                          ),
                          Positioned(
                            top: 170 * 0.3,
                            left: 20,
                            child: Text(
                              product["desc"] as String,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(241, 237, 237, 1),
                                fontFamily: 'YourFontFamily',
                                fontStyle: FontStyle.italic,
                                letterSpacing: 1.2,
                              ),
                            ),
                          ),
                          Positioned(
                              top: 170 * 0.6,
                              left: 250,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    product["price"] as String,
                                    style: TextStyle(
                                        color: Color.fromRGBO(199, 87, 87, 1)),
                                  ))),
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    height: 180,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(226, 38, 38, 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                      children: [
                        const Positioned(
                            top: 100 * 0.12,
                            left: 40,
                            child: Text(
                              "Size",
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            )),
                        Positioned(
                            top: 100 * 0.4,
                            left: 30,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  "UK 7",
                                  style: TextStyle(
                                      color: Color.fromRGBO(199, 87, 87, 1)),
                                ))),
                        Positioned(
                            top: 100 * 0.4,
                            left: 120,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  "UK 8",
                                  style: TextStyle(
                                      color: Color.fromRGBO(199, 87, 87, 1)),
                                ))),
                        Positioned(
                            top: 100 * 0.4,
                            left: 220,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  "UK 9",
                                  style: TextStyle(
                                      color: Color.fromRGBO(199, 87, 87, 1)),
                                ))),
                        Positioned(
                            top: 100 * 1.1,
                            left: 50,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  "BUY NOW",
                                  style: TextStyle(
                                      color: Color.fromRGBO(199, 87, 87, 1)),
                                ))),
                        Positioned(
                            top: 100 * 1.1,
                            left: 180,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  "+   CART",
                                  style: TextStyle(
                                      color: Color.fromRGBO(199, 87, 87, 1)),
                                ))),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
