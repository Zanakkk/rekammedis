import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../lihatprofil.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference userdata = firestore.collection('user');

  final FirebaseAuth auth = FirebaseAuth.instance;
  final User? user = auth.currentUser;
  final useremail = user?.email;
    return Column(
      children: [
        StreamBuilder<DocumentSnapshot>(
          stream: userdata.doc(useremail.toString()).snapshots(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              Map<String, dynamic> data =
                  snapshot.data!.data() as Map<String, dynamic>;

              String? imageUrl = data['imageurl'];

              return Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  child: Card(
                      elevation: 4,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Container(
                        child: (imageUrl == null)
                            ? const Image(
                                image: NetworkImage(
                                    'https://firebasestorage.googleapis.com/v0/b/teledentistry-70122.appspot.com/o/foto_blog%2Fkosong.png?alt=media&token=652482ea-7fa4-451f-913a-912c83d3ebd1'),
                                height: 36,
                                width: 36,
                                fit: BoxFit.cover,
                              )
                            : Image(
                                image: NetworkImage(imageUrl),
                                height: 36,
                                width: 36,
                                fit: BoxFit.cover,
                              ),
                      )),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const LihatProfil();
                    }));
                  },
                ),
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ],
    );
  }
}
