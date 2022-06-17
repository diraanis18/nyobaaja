// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:posttest7_1915026041_diraanisageungratnawati/detail_page.dart';
import 'package:posttest7_1915026041_diraanisageungratnawati/list_resep.dart';
// import 'package:posttest6_1915026041_diraanisageungratnawati/detailpage.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Resep Makanan",
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFbee8ff),
              ),
              child: Text("Menu Resep")),
          ListTile(
              leading: Icon(Icons.note_add),
              title: Text("Form Kirim Resep "),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(
                //   builder: (_) {
                //     return const MyHomePage();
                //   },
                // ));
                Get.to(MyHomePage());
              }),
          ListTile(
              leading: Icon(Icons.note_add),
              title: Text("List Resepku "),
              onTap: () {
                Get.to(ListResep());
              })
        ],
      )),
      body: ListView(children: [
        Stack(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height + 200,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
          Positioned(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.all(30),
                  children: [
                    MenuCon(context, 'assets/food-min.png', "Quickly",
                        Color(0xFFfae497)),
                    MenuCon(context, 'assets/breakfast.png', "Breakfast",
                        Color(0xFFbee8ff)),
                    MenuCon(context, 'assets/tarcake.png', "Celebratory",
                        Color(0xFFfaa795)),
                    MenuCon(context, 'assets/food2.png', "Dinner",
                        Color(0xFFd2afdf)),
                  ]),
            ),
          ),
        ]),
      ]),
    );
  }
}

Widget MenuCon(
    BuildContext context, String file, String deskripsi, Color warna) {
  return InkWell(
    onTap: () {
      if (deskripsi == "Breakfast") {
        Get.to(MakananKedua());
      } else if (deskripsi == "Celebratory") {
        Get.to(MakananKetiga());
      } else if (deskripsi == "Dinner") {
        Get.to(MakananKeempat());
      } else if (deskripsi == "Quickly") {
        Get.to(MakananPertama());
      }
      // Navigator.push(context, MaterialPageRoute(builder: (context) {
      //   if (deskripsi == "Breakfast") {
      //     return MakananKedua();
      //   } else if (deskripsi == "Celebratory") {
      //     return MakananKetiga();
      //   } else if (deskripsi == "Dinner") {
      //     return MakananKeempat();
      //   }
      //   return MakananPertama();
      // }));
    },
    child: Container(
      decoration: BoxDecoration(
        color: warna,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: Stack(children: [
        Center(
          child: Image.asset(
            file,
            alignment: Alignment.center,
            scale: 8,
          ),
        ),
        Positioned(
          top: 180,
          width: 200,
          child: Center(
            child: Text(
              deskripsi,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
                letterSpacing: 1.5,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
      ]),
    ),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final judulController = TextEditingController();
  final emailController = TextEditingController();
  final resepController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose

    judulController.dispose();
    emailController.dispose();
    resepController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference resep = firestore.collection("resep");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFd2afdf),
        title: Text(
          "Form Kirim Resep by Dira",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: ListView(
        children: [
          Divider(),
          TextField(
            controller: judulController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Judul Resep",
            ),
          ),
          SizedBox(height: 40),
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Email",
            ),
          ),
          SizedBox(height: 40),
          TextFormField(
            controller: resepController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Resep (Bahan-Bahan)",
            ),
          ),
          Container(
            width: 200,
            height: 50,
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  resep.add({
                    'nama': judulController.text,
                    'alamat': emailController.text,
                    'bahan': resepController.text,
                  });
                });
                Get.off(ListResep());
              },
              child: Text("Kirim"),
            ),
          ),
        ],
      ),
    );
  }
}

class FormEdit extends StatefulWidget {
  const FormEdit({Key? key, required this.id}) : super(key: key);
  final String id;
  @override
  State<FormEdit> createState() => _FormEditState();
}

class _FormEditState extends State<FormEdit> {
  final judulController = TextEditingController();
  final emailController = TextEditingController();
  final resepController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose

    judulController.dispose();
    emailController.dispose();
    resepController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference resep = firestore.collection("resep");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFd2afdf),
        title: Text(
          "Form Edit Resep by Dira",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: ListView(
        children: [
          Divider(),
          TextField(
            controller: judulController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Judul Resep",
            ),
          ),
          SizedBox(height: 40),
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Email",
            ),
          ),
          SizedBox(height: 40),
          TextFormField(
            controller: resepController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Resep (Bahan-Bahan)",
            ),
          ),
          Container(
            width: 200,
            height: 50,
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  resep.doc(widget.id).update({
                    'nama': judulController.text,
                    'alamat': emailController.text,
                    'bahan': resepController.text,
                  });
                });
                Get.off(ListResep());
              },
              child: Text("Kirim"),
            ),
          ),
        ],
      ),
    );
  }
}
