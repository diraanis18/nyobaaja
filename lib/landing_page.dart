import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest7_1915026041_diraanisageungratnawati/main_page.dart';
// import 'package:posttest6_1915026041_diraanisageungratnawati/mainpage.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFfaa795),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 192,
                height: 243,
                margin: EdgeInsets.only(top: 61),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/logoo.png"),
                  ),
                ),
              ),
              Text(
                "Resep Makanan Kesukaan Anda",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFd2afdf),
                ),
              ),
              Text(
                "Kalian bisa menambahkan resep makanan dan dapat melihat resep makanan yang tersedia",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => MainPage()),
                  // );
                  Get.off(MainPage());
                },
                child: Container(
                  // width: 100,
                  // height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Text(
                      "Mulai",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFFfaa795),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
