import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:posttest7_1915026041_diraanisageungratnawati/main_page.dart';
import 'package:posttest7_1915026041_diraanisageungratnawati/resep_item.dart';

class ListResep extends StatelessWidget {
  const ListResep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference resep = firestore.collection("resep");

    return Scaffold(
      appBar: AppBar(
        title: Text('Postest 7'),
      ),
      body: ListView(
        children: [
          StreamBuilder<QuerySnapshot>(
            stream: resep.snapshots(),
            builder: (_, snapshot) {
              return (snapshot.hasData)
                  ? Column(
                      children: snapshot.data!.docs
                          .map(
                            (e) => ResepItem(
                              nama: e.get('nama'),
                              bahan: e.get('bahan'),
                              onUpdate: () {
                                Get.off(FormEdit(id: e.id));
                              },
                              onDelete: () {
                                resep.doc(e.id).delete();
                              },
                            ),
                          )
                          .toList(),
                    )
                  : Text('Loading...');
            },
          ),
        ],
      ),
    );
  }
}
