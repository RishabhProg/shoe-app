import 'package:first/shop.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';

class home extends StatelessWidget {
  const home({super.key});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromRGBO(11, 11, 11, 1),
      body: Center(
        child: Stack(
          children: [
            const Positioned(
              top: 80,
              left: 50,
              child: Text(
                "平",
                style: TextStyle(
                    fontSize: 300,
                    fontWeight: FontWeight.w100,
                    color: Color.fromRGBO(246, 246, 246, 0.3)),
              ),
            ),
            Positioned(
              top: 150, // Set the top position
              left: 110, // Set the left position
              child: CircleAvatar(
                backgroundColor: Color.fromRGBO(30, 165, 43, 1),
                radius: 70,
                child: ClipOval(
                  child: Image.asset(
                    "assets/nike.png",
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 290, // Set the top position
              left: 40, // Set the left position
              child: CircleAvatar(
                backgroundColor: Color.fromRGBO(65, 129, 218, 1),
                radius: 60,
                child: ClipOval(
                  child: Image.asset(
                    "assets/addidas.png",
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 310, // Set the top position
              left: 180, // Set the left position
              child: CircleAvatar(
                backgroundColor: Color.fromRGBO(173, 96, 224, 1),
                radius: 55,
                child: ClipOval(
                  child: Image.asset(
                    "assets/convers.png",
                    width: 130,
                    height: 130,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 430, // Set the top position
              left: 120, // Set the left position
              child: CircleAvatar(
                backgroundColor: Color.fromRGBO(232, 172, 30, 1),
                radius: 40,
                child: ClipOval(
                  child: Image.asset(
                    "assets/vans.png",
                    width: 60,
                    height: 60,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 230, // Set the top position
              left: 280, // Set the left position
              child: CircleAvatar(
                backgroundColor: Color.fromRGBO(45, 44, 41, 1),
                radius: 50,
                child: ClipOval(
                  child: Image.asset(
                    "assets/supreme.png",
                    width: 70,
                    height: 70,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 400, // Set the top position
              left: 280, // Set the left position
              child: CircleAvatar(
                backgroundColor: Color.fromRGBO(67, 175, 232, 1),
                radius: 50,
                child: ClipOval(
                  child: Image.asset(
                    "assets/reebok.png",
                    width: 70,
                    height: 70,
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 550,
              left: 40,
              child: Text(
                "Shoes",
                style: TextStyle(
                  color: Color.fromRGBO(189, 187, 187, 1),
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const Positioned(
              top: 550,
              left: 165,
              child: Text(
                "Hub",
                style: TextStyle(
                  color: Color.fromRGBO(255, 253, 253, 1),
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const Positioned(
              top: 620,
              left: 40,
              child: Text(
                "Style that walks with you,\ncomforts that carries you,shoes\nfor every step.",
                style: TextStyle(
                  color: Color.fromRGBO(189, 187, 187, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Positioned(
              top: height * 0.9,
              bottom: height * 0.04,
              left: width * 0.1,
              right: width * 0.1,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => shop()));
                },
                icon: const Icon(
                  Icons.arrow_right,
                  color: Color.fromRGBO(251, 250, 250, 1),
                ),
                label: const Text(
                  "Get Started",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(248, 243, 243, 1)),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(213, 80, 80, 1),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(30.0), // Set the border radius
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
