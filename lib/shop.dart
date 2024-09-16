import 'package:first/list.dart';
import 'package:first/product_card.dart';
import 'package:first/product_details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class shop extends StatelessWidget {
  final List<String> filter = const [
    "assets/nike.png",
    "assets/supreme.png",
    "assets/vans.png",
    "assets/convers.png",
    "assets/reebok.png",
    "assets/addidas.png"
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromRGBO(11, 11, 11, 1),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      style: TextStyle(color: Color.fromRGBO(220, 217, 217, 1)),
                      decoration: InputDecoration(
                          hintText: "Search by brand,type,etc..",
                          prefixIcon: Icon(Icons.search),
                          prefixIconColor: Color.fromRGBO(220, 217, 217, 1),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(255, 255, 255, 1)),
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(40),
                                  right: Radius.circular(40))),
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color.fromRGBO(220, 217, 217, 1)),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 16.0)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Color.fromRGBO(30, 165, 43, 0),
                    radius: 50,
                    child: ClipOval(
                      child: Image.asset(
                        "assets/person.png",
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 17),
                  child: Text(
                    "Brands",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(248, 250, 249, 1),
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: filter.length,
                  itemBuilder: (context, index) {
                    final filters = filter[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Container(
                        width: 65,
                        height: 65,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(73, 74, 74, 0)),
                        child: Image.asset(
                          filters, // Replace 'image.png' with your image asset path
                          width: 30,
                          height: 30,
                          // Adjust the fit of the image within the container
                        ),
                      ),
                    );
                  }),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 380,
                  height: 140,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(85, 84, 84, 1),
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Stack(
                    children: [
                      const Positioned(
                          top: 304 * 0.05,
                          left: 140 * 0.2,
                          child: Text(
                            "Year-End Sale",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                          )),
                      const Positioned(
                          top: 304 * 0.18,
                          left: 140 * 0.25,
                          child: Text(
                            "Get up to 90% off",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(201, 199, 199, 1)),
                          )),
                      Positioned(
                        top: 304 * 0.28,
                        left: 140 * 0.25,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(181, 36, 36, 1)),
                          onPressed: () {},
                          child: const Text(
                            "Buy now",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 304 * 0.03,
                        left: 140 * 1.2,
                        child: Image.asset(
                          'assets/ball.png', // Replace 'image.png' with your image asset path
                          width: 200, // Adjust width as needed
                          height: 200, // Adjust height as needed
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return ProductDetailsPage(product: product);
                        }));
                      },
                      child: ProductCard(
                        title: product["title"] as String,
                        price: product["price"] as String,
                        image: product['imageurl'] as String,
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
