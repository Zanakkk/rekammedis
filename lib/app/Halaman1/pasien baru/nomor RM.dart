// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:rekammedis/app/HalamanRumah/HalamanRumah.dart';

import '../pasien lama/pasien lama.dart';

class NoRMPasien extends StatefulWidget {
  const NoRMPasien({Key? key}) : super(key: key);

  @override
  State<NoRMPasien> createState() => _NoRMPasienState();
}

class _NoRMPasienState extends State<NoRMPasien> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrasi'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: Theme(
          data: ThemeData(
              colorScheme: ColorScheme.fromSwatch()
                  .copyWith(primary: Colors.black)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        Text('Nama Pasien : Muhammad Taufik'),
                        Text('Nama Koas : Muhammad Daffa Safra'),
                        Text('NIM : 2241412025'),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HalamanRumah()));
                              },
                              child: const Text('Kembali')),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const daftarshiftpasienlama()));
                              },
                              child: const Text('Daftar Pasien')),
                        ],
                      ),
                    )
                  ],
                )),
          )),
    );
  }
}
