// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:rekammedis/app/Halaman1/Component/Header.dart';

import '../Halaman1/dompet.dart';
import '../Halaman1/pasien baru/rekammedis.dart';
import '../Halaman1/pasien lama/pasien lama.dart';
import '../Halaman2/ticket.dart';
import '../Halaman2/ListPasien.dart';
import '../Halaman3/Halaman3.dart';
import '../Halaman3/Signature.dart';

class HalamanRumah extends StatefulWidget {
  const HalamanRumah({Key? key}) : super(key: key);

  @override
  State<HalamanRumah> createState() => _HalamanRumahState();
}

class _HalamanRumahState extends State<HalamanRumah> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            alignment: Alignment.center,
            minimumSize:
                Size(((MediaQuery.of(context).size.width - 48) / 2), 36),
            elevation: 20,

            backgroundColor: Colors.black, // background (button) color
            foregroundColor: Colors.white, // foreground (text) color
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBody: true,
        body: Container(
            color: Colors.grey.shade50,
            height: MediaQuery.of(context).size.height,
            child: Center(
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: const BoxDecoration(
                        gradient: RadialGradient(
                            colors: [Colors.black, Colors.white],
                            radius: 1.6,
                            center: Alignment.topRight,
                            focalRadius: 0.80)),
                    child: Center(
                      child: (_selectedIndex == 0)
                          ? Center(
                              child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height,
                                  decoration: const BoxDecoration(
                                      gradient: RadialGradient(
                                          colors: [Colors.black, Colors.white],
                                          radius: 0.8,
                                          center: Alignment.topRight,
                                          focalRadius: 0.80)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12),
                                    child: Column(
                                      children: [
                                        const Header(),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        const dompet(),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            ElevatedButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const RekamMedis()));
                                                },
                                                child: const Text(
                                                    'Registrasi Pasien')),
                                            ElevatedButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const daftarshiftpasienlama()));
                                                },
                                                child:
                                                    const Text('Daftar Shift')),
                                          ],
                                        ),
                                        InkWell(
                                          child: Card(
                                              clipBehavior: Clip.antiAlias,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                              elevation: 2,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 8,
                                                        horizontal: 8),
                                                child: SizedBox(
                                                  height: 40,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  child: const Center(
                                                    child: Text('List Pasien'),
                                                  ),
                                                ),
                                              )),
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const ListPasien()));
                                          },
                                        ),
                                      ],
                                    ),
                                  )))
                          : (_selectedIndex == 1)
                              ? Column(
                                  children: const [
                                    SizedBox(
                                      height: 48,
                                    ),
                                    TicketGabung(),
                                  ],
                                )
                              : Column(
                                  children: [
                                    const SizedBox(
                                      height: 48,
                                    ),
                                    const Tab3(),
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const SignatureDosen()));
                                        },
                                        child: const Text('ttd')),
                                  ],
                                ),
                    )))),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
              child: GNav(
                gap: 12,
                rippleColor: Colors.black12,
                hoverColor: Colors.black12,
                activeColor: Colors.black,
                iconSize: 24,
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                duration: const Duration(milliseconds: 300),
                tabBackgroundColor: Colors.black12,
                color: Colors.black,
                tabs: const [
                  GButton(
                    icon: LineIcons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: LineIcons.hospital,
                    text: 'Kerja',
                  ),
                  GButton(
                    icon: LineIcons.user,
                    text: 'User',
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
      ),
    );
  }
}
