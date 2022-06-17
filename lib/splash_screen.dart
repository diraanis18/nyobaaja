import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:get/get.dart';
import 'package:posttest7_1915026041_diraanisageungratnawati/landing_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SplashScreenStart();
  }

  // ignore: non_constant_identifier_names
  SplashScreenStart() {
    var duration = const Duration(seconds: 10);
    return Timer(duration, () {
      // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const LandingPage()));
      // Get.off();
      Get.off(() => LandingPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/logoo.png",
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height / 2,
        ),
      ),
    );
  }
}
