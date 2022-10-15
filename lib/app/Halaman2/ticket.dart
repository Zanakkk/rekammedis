import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import 'Controller RM/Controller RM.dart';

class Ticket extends StatefulWidget {
  const Ticket({Key? key}) : super(key: key);

  @override
  State<Ticket> createState() => _TicketState();
}

class _TicketState extends State<Ticket> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280, // MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
          elevation: 4,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 2,
                      child: Container(
                          color: Colors.red.shade100,
                          width: 120,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 4, right: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  LineIcons.tooth,
                                  size: 24,
                                  color: Colors.red.shade800,
                                ),
                                SizedBox(
                                  child: Text('Periodonsia',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Colors.red.shade900,
                                      )),
                                ),
                              ],
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12, top: 8),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(56, 32),
                        ),
                        onPressed: () {},
                        child: const Text('Edit'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Text('Invoice',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black,
                    )),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Column(
                              children: [
                                Text('Nama Koas',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12,
                                      color: Colors.grey,
                                    )),
                                Text('M Daffa Safra',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.black,
                                    )),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Column(
                              children: [
                                Text('Nama Pasien',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12,
                                      color: Colors.grey,
                                    )),
                                Text('Rizal Effendi',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.black,
                                    )),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Column(
                              children: [
                                Text('Preseptor',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12,
                                      color: Colors.grey,
                                    )),
                                Text('drg Dedi',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.black,
                                    )),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Column(
                              children: [
                                Text('Tanggal',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12,
                                      color: Colors.grey,
                                    )),
                                Row(
                                  children: [
                                    Text('${DateTime.now().day} - ',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.black,
                                        )),
                                    Text('${DateTime.now().month} - ',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.black,
                                        )),
                                    Text(DateTime.now().year.toString(),
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.black,
                                        )),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Column(
                              children: [
                                Text('No RM',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12,
                                      color: Colors.grey,
                                    )),
                                Text('020001',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.black,
                                    )),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Column(
                              children: [
                                Text('Tindakan',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12,
                                      color: Colors.grey,
                                    )),
                                Text('SRP Elektrik',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.black,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
                Column(
                  children: [
                    Text('Shift',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          color: Colors.grey,
                        )),
                    Text('2',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Colors.black,
                        )),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

class Ticket2 extends StatefulWidget {
  const Ticket2({Key? key}) : super(key: key);

  @override
  State<Ticket2> createState() => _Ticket2State();
}

class _Ticket2State extends State<Ticket2> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190, // MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
          elevation: 4,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                GNav(
                  gap: 12,
                  rippleColor: Colors.black12,
                  hoverColor: Colors.black12,
                  activeColor: Colors.black,
                  iconSize: 16,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  duration: const Duration(milliseconds: 300),
                  tabBackgroundColor: Colors.black12,
                  color: Colors.black,
                  tabs: const [
                    GButton(
                      icon: LineIcons.toolbox,
                      text: 'Alat dan Bahan',
                    ),
                    GButton(
                      icon: Icons.payment,
                      text: 'Pembayaran',
                    ),
                    GButton(
                      icon: LineIcons.newspaper,
                      text: 'Status',
                    ),
                  ],
                  selectedIndex: _selectedIndex,
                  onTabChange: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                (_selectedIndex == 0)
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Column(
                                children: [
                                  Text('Alat',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12,
                                        color: Colors.grey,
                                      )),
                                  Text('Handpiece Lowspeed',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Colors.black,
                                      )),
                                  Text('Handpiece Scaller',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Colors.black,
                                      )),
                                  Text('Tip Scaller',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Colors.black,
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Column(
                                children: [
                                  Text('Bahan',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12,
                                        color: Colors.grey,
                                      )),
                                  Text('Povidon Iodin',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Colors.black,
                                      )),
                                  Text('Disclosing Solution',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Colors.black,
                                      )),
                                  Text('Pumice',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Colors.black,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ))
                    : (_selectedIndex == 1)
                        ? Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: SizedBox(
                              height: 100,
                              child: ListView(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0),
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Items',
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12,
                                            color: Colors.grey,
                                          )),
                                      Text('Harga',
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12,
                                            color: Colors.grey,
                                          )),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Tiket Dental Unit',
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Colors.black,
                                          )),
                                      Text('Rp 5.000,00',
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Colors.black,
                                          )),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('SRP Elektrik',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Colors.black,
                                          )),
                                      Text('Rp 50.000,00',
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Colors.black,
                                          )),
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(vertical: 8),
                                    child: DottedLine(
                                      direction: Axis.horizontal,
                                      lineLength: double.infinity,
                                      lineThickness: 1.0,
                                      dashLength: 4.0,
                                      dashColor: Colors.black,
                                      dashRadius: 0.0,
                                      dashGapLength: 4.0,
                                      dashGapRadius: 0.0,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Total',
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12,
                                            color: Colors.black,
                                          )),
                                      Text('Rp 55.000,00',
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12,
                                            color: Colors.black,
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ))
                        : Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Sudah Mengisi RM',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.black,
                                        )),
                                    Text('Belum',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.red,
                                        )),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Sudah di ACC dokter',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.black,
                                        )),
                                    Text('Belum',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.red,
                                        )),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Sudah Bayar',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.black,
                                        )),
                                    Text('Sudah',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.green,
                                        )),
                                  ],
                                ),
                              ],
                            ))
              ],
            ),
          )),
    );
  }
}

class TicketGabung extends StatefulWidget {
  const TicketGabung({Key? key}) : super(key: key);

  @override
  State<TicketGabung> createState() => _TicketGabungState();
}

class _TicketGabungState extends State<TicketGabung> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height - 170,
          child: ListView(
            padding: const EdgeInsets.only(top: 0),
            children: const [
              Ticket(),
              Ticket2(),
            ],
          ),
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ControllerRMBerwarna()));
            },
            child: const Text(
              'Kerja',
              style: TextStyle(color: Colors.white),
            )),
      ],
    );
  }
}
