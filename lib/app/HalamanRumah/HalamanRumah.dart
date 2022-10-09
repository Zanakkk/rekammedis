// ignore_for_file: file_names, non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:rekammedis/api/AuthServices.dart';
import 'package:rekammedis/app/Halaman2/Listpasienyangdidaftarkan.dart';

import '../Halaman1/Daftar Pasien Baru.dart';
import '../Halaman1/Daftar pasien lama.dart';
import '../Halaman1/dompet.dart';
import '../Halaman2/ListPasien.dart';
import '../Halaman3/Halaman3.dart';
import '../lihatprofil.dart';

class HalamanRumah extends StatefulWidget {
  const HalamanRumah({Key? key}) : super(key: key);

  @override
  State<HalamanRumah> createState() => _HalamanRumahState();
}

class _HalamanRumahState extends State<HalamanRumah> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference userdata = firestore.collection('user');

    final FirebaseAuth auth = FirebaseAuth.instance;
    final User? user = auth.currentUser;
    final useremail = user?.email;

    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      appBar: AppBar(
        title: (_selectedIndex == 0)
            ? const Text("RSGM FKG UNAND")
            : (_selectedIndex == 1)
                ? const Text("KERJA")
                : const Text("INFO KOAS"),
        centerTitle: true,
        titleTextStyle: GoogleFonts.pathwayGothicOne(
            fontWeight: FontWeight.w500, fontSize: 24, color: Colors.white),
        backgroundColor: const Color(0xFFE1001E),
        elevation: 0,
        automaticallyImplyLeading: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: StreamBuilder<DocumentSnapshot>(
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
          ),
        ],
      ),
      body: Container(
          color: Colors.grey.shade50,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: (_selectedIndex == 0)
                ? Column(
                    children: [
                      const dompet(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          pasienbaru(),
                          pasienlama(),
                        ],
                      ),
                      InkWell(
                        child: Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 2,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 8),
                              child: SizedBox(
                                height: 40,
                                width: MediaQuery.of(context).size.width,
                                child: const Center(
                                  child: Text('List Pasien'),
                                ),
                              ),
                            )),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ListPasien()));
                        },
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ListPasien()));
                          },
                          child: const Text('login')),
                    ],
                  )
                : (_selectedIndex == 1)
                    ? Column(
                        children: const [
                          ListPasienYangDidaftarkan(),
                        ],
                      )
                    : Column(
                        children: const [
                          Tab3(),
                        ],
                      ),
          )),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.white,
              hoverColor: Colors.white,
              activeColor: const Color(0xFFE1001E),
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
              duration: const Duration(milliseconds: 300),
              tabBackgroundColor: Colors.white,
              color: Colors.black,
              tabs: const [
                GButton(
                  icon: LineIcons.home,
                ),
                GButton(
                  icon: LineIcons.hospital,
                ),
                GButton(
                  icon: LineIcons.user,
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
