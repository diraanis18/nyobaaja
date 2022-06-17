import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MakananPertama extends StatefulWidget {
  const MakananPertama({Key? key}) : super(key: key);

  @override
  State<MakananPertama> createState() => _MakananPertamaState();
}

class _MakananPertamaState extends State<MakananPertama> {
  @override
  Widget build(BuildContext context) {
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    var mediaQueryHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.center,
                width: mediaQueryWidth,
                height: mediaQueryHeight / 2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/food-min.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: mediaQueryHeight,
                height: mediaQueryHeight / 2,
                decoration: BoxDecoration(
                  color: Color(0xFFfae497),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: mediaQueryHeight / 12, vertical: 30),
                  child: Column(
                    children: [
                      Text(
                        "Quickly",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Harga\t: Rp. 15.000",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: mediaQueryHeight / 12),
            child: InkWell(
              child: Container(
                width: mediaQueryWidth / 2,
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.9),
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                ),
                child: const Center(
                  child: Text(
                    "BELI",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Sukses"),
                        content: Text("Terimakasih Sudah Membeli Makanan Ini"),
                      );
                    });
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const HomePage1(),
                //   ),
                // );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MakananKedua extends StatefulWidget {
  const MakananKedua({Key? key}) : super(key: key);

  @override
  State<MakananKedua> createState() => _MakananKeduaState();
}

class _MakananKeduaState extends State<MakananKedua> {
  @override
  Widget build(BuildContext context) {
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    var mediaQueryHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.center,
                width: mediaQueryWidth,
                height: mediaQueryHeight / 2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/breakfast.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: mediaQueryHeight,
                height: mediaQueryHeight / 2,
                decoration: BoxDecoration(
                  color: Color(0xFFbee8ff),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: mediaQueryHeight / 12, vertical: 30),
                  child: Column(
                    children: [
                      Text(
                        "Breakfast",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Harga\t: Rp. 50.000",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: mediaQueryHeight / 12),
            child: InkWell(
              child: Container(
                width: mediaQueryWidth / 2,
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.9),
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                ),
                child: const Center(
                  child: Text(
                    "BELI",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Sukses"),
                        content: Text("Terimakasih Sudah Membeli Makanan Ini"),
                      );
                    });
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const HomePage1(),
                //   ),
                // );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MakananKetiga extends StatefulWidget {
  const MakananKetiga({Key? key}) : super(key: key);

  @override
  State<MakananKetiga> createState() => _MakananKetigaState();
}

class _MakananKetigaState extends State<MakananKetiga> {
  @override
  Widget build(BuildContext context) {
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    var mediaQueryHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.center,
                width: mediaQueryWidth,
                height: mediaQueryHeight / 2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/tarcake.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: mediaQueryHeight,
                height: mediaQueryHeight / 2,
                decoration: BoxDecoration(
                  color: Color(0xFFfaa795),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: mediaQueryHeight / 12, vertical: 30),
                  child: Column(
                    children: [
                      Text(
                        "Celebratory",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Harga\t: Rp. 90.000",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: mediaQueryHeight / 12),
            child: InkWell(
              child: Container(
                width: mediaQueryWidth / 2,
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.9),
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                ),
                child: const Center(
                  child: Text(
                    "BELI",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Sukses"),
                        content: Text("Terimakasih Sudah Membeli Makanan Ini"),
                      );
                    });
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const HomePage1(),
                //   ),
                // );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MakananKeempat extends StatefulWidget {
  const MakananKeempat({Key? key}) : super(key: key);

  @override
  State<MakananKeempat> createState() => _MakananKeempatState();
}

class _MakananKeempatState extends State<MakananKeempat> {
  @override
  Widget build(BuildContext context) {
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    var mediaQueryHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.center,
                width: mediaQueryWidth,
                height: mediaQueryHeight / 2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/food2.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: mediaQueryHeight,
                height: mediaQueryHeight / 2,
                decoration: BoxDecoration(
                  color: Color(0xFFfae497),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: mediaQueryHeight / 12, vertical: 30),
                  child: Column(
                    children: [
                      Text(
                        "Dinner",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Harga\t: Rp. 80.000",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: mediaQueryHeight / 12),
            child: InkWell(
              child: Container(
                width: mediaQueryWidth / 2,
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.9),
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                ),
                child: const Center(
                  child: Text(
                    "BELI",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Sukses"),
                        content: Text("Terimakasih Sudah Membeli Makanan Ini"),
                      );
                    });
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const HomePage1(),
                //   ),
                // );
              },
            ),
          ),
        ],
      ),
    );
  }
}
