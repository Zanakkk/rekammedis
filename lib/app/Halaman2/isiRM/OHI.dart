// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:rekammedis/app/Halaman2/isiRM/GI.dart';

class OHI extends StatefulWidget {
  const OHI({Key? key}) : super(key: key);

  @override
  State<OHI> createState() => _OHIState();
}

class _OHIState extends State<OHI> {
  int debrisbukalmaxilakanan = 0;
  int debrisbukalmaxilaant = 0;
  int debrisbukalmaxilakiri = 0;

  int debrispalatalmaxilakanan = 0;
  int debrispalatalmaxilaant = 0;
  int debrispalatalmaxilakiri = 0;

  int debrisbukalmandibulakanan = 0;
  int debrisbukalmandibulaant = 0;
  int debrisbukalmandibulakiri = 0;
  int debrislingualmandibulakanan = 0;
  int debrislingualmandibulaant = 0;
  int debrislingualmandibulakiri = 0;

  int kalkulusbukalmaxilakanan = 0;
  int kalkulusbukalmaxilaant = 0;
  int kalkulusbukalmaxilakiri = 0;

  int kalkuluspalatalmaxilakanan = 0;
  int kalkuluspalatalmaxilaant = 0;
  int kalkuluspalatalmaxilakiri = 0;

  int kalkulusbukalmandibulakanan = 0;
  int kalkulusbukalmandibulaant = 0;
  int kalkulusbukalmandibulakiri = 0;
  int kalkuluslingualmandibulakanan = 0;
  int kalkuluslingualmandibulaant = 0;
  int kalkuluslingualmandibulakiri = 0;

  @override
  Widget build(BuildContext context) {
    int DebrisIndex = debrisbukalmaxilakanan +
        debrisbukalmaxilaant +
        debrisbukalmaxilakiri +
        debrispalatalmaxilakanan +
        debrispalatalmaxilaant +
        debrispalatalmaxilakiri +
        debrisbukalmandibulakanan +
        debrisbukalmandibulaant +
        debrisbukalmandibulakiri;

    int KalkulusIndex = (kalkulusbukalmaxilakanan +
        kalkulusbukalmaxilaant +
        kalkulusbukalmaxilakiri +
        kalkuluspalatalmaxilakanan +
        kalkuluspalatalmaxilaant +
        kalkuluspalatalmaxilakiri +
        kalkulusbukalmandibulakanan +
        kalkulusbukalmandibulaant +
        kalkulusbukalmandibulakiri);

    int OHIIndex = DebrisIndex + KalkulusIndex;

    return Scaffold(
      appBar: AppBar(
        title: const Text('OHI'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.teal.shade900,
      ),
      body: ListView(
        children: [
          const Center(
            child: Text('Debris'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                      width: (MediaQuery.of(context).size.width) / 4,
                      child: const Text('Maxila Bukal')),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 100) / 4,
                    child: DropdownButton(
                        value: debrisbukalmaxilakanan,
                        elevation: 10,
                        items: const [
                          DropdownMenuItem(
                            value: 0,
                            child: Text("0"),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            child: Text("1"),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text("2"),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text("3"),
                          ),
                        ],
                        onChanged: (dynamic value) {
                          setState(() {
                            debrisbukalmaxilakanan = value;
                          });
                        }),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 100) / 4,
                    child: DropdownButton(
                        value: debrisbukalmaxilaant,
                        elevation: 10,
                        items: const [
                          DropdownMenuItem(
                            value: 0,
                            child: Text("0"),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            child: Text("1"),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text("2"),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text("3"),
                          ),
                        ],
                        onChanged: (dynamic value) {
                          setState(() {
                            debrisbukalmaxilaant = value;
                          });
                        }),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 100) / 4,
                    child: DropdownButton(
                        value: debrisbukalmaxilakiri,
                        elevation: 10,
                        items: const [
                          DropdownMenuItem(
                            value: 0,
                            child: Text("0"),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            child: Text("1"),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text("2"),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text("3"),
                          ),
                        ],
                        onChanged: (dynamic value) {
                          setState(() {
                            debrisbukalmaxilakiri = value;
                          });
                        }),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                      width: (MediaQuery.of(context).size.width) / 4,
                      child: const Text('Maxila Palatal')),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 100) / 4,
                    child: DropdownButton(
                        value: debrispalatalmaxilakanan,
                        elevation: 10,
                        items: const [
                          DropdownMenuItem(
                            value: 0,
                            child: Text("0"),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            child: Text("1"),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text("2"),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text("3"),
                          ),
                        ],
                        onChanged: (dynamic value) {
                          setState(() {
                            debrisbukalmaxilakanan = value;
                          });
                        }),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 100) / 4,
                    child: DropdownButton(
                        value: debrispalatalmaxilaant,
                        elevation: 10,
                        items: const [
                          DropdownMenuItem(
                            value: 0,
                            child: Text("0"),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            child: Text("1"),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text("2"),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text("3"),
                          ),
                        ],
                        onChanged: (dynamic value) {
                          setState(() {
                            debrisbukalmaxilaant = value;
                          });
                        }),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 100) / 4,
                    child: DropdownButton(
                        value: debrispalatalmaxilakiri,
                        elevation: 10,
                        items: const [
                          DropdownMenuItem(
                            value: 0,
                            child: Text("0"),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            child: Text("1"),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text("2"),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text("3"),
                          ),
                        ],
                        onChanged: (dynamic value) {
                          setState(() {
                            debrisbukalmaxilakiri = value;
                          });
                        }),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                      width: (MediaQuery.of(context).size.width) / 4,
                      child: const Text('Mandibula Bukal')),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 100) / 4,
                    child: DropdownButton(
                        value: debrisbukalmandibulakanan,
                        elevation: 10,
                        items: const [
                          DropdownMenuItem(
                            value: 0,
                            child: Text("0"),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            child: Text("1"),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text("2"),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text("3"),
                          ),
                        ],
                        onChanged: (dynamic value) {
                          setState(() {
                            debrisbukalmaxilakanan = value;
                          });
                        }),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 100) / 4,
                    child: DropdownButton(
                        value: debrisbukalmandibulaant,
                        elevation: 10,
                        items: const [
                          DropdownMenuItem(
                            value: 0,
                            child: Text("0"),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            child: Text("1"),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text("2"),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text("3"),
                          ),
                        ],
                        onChanged: (dynamic value) {
                          setState(() {
                            debrisbukalmaxilaant = value;
                          });
                        }),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 100) / 4,
                    child: DropdownButton(
                        value: debrisbukalmandibulakiri,
                        elevation: 10,
                        items: const [
                          DropdownMenuItem(
                            value: 0,
                            child: Text("0"),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            child: Text("1"),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text("2"),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text("3"),
                          ),
                        ],
                        onChanged: (dynamic value) {
                          setState(() {
                            debrisbukalmaxilakiri = value;
                          });
                        }),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                      width: (MediaQuery.of(context).size.width) / 4,
                      child: const Text('Mandibula Lingual')),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 100) / 4,
                    child: DropdownButton(
                        value: debrislingualmandibulakanan,
                        elevation: 10,
                        items: const [
                          DropdownMenuItem(
                            value: 0,
                            child: Text("0"),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            child: Text("1"),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text("2"),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text("3"),
                          ),
                        ],
                        onChanged: (dynamic value) {
                          setState(() {
                            debrisbukalmaxilakanan = value;
                          });
                        }),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 100) / 4,
                    child: DropdownButton(
                        value: debrislingualmandibulaant,
                        elevation: 10,
                        items: const [
                          DropdownMenuItem(
                            value: 0,
                            child: Text("0"),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            child: Text("1"),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text("2"),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text("3"),
                          ),
                        ],
                        onChanged: (dynamic value) {
                          setState(() {
                            debrisbukalmaxilaant = value;
                          });
                        }),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 100) / 4,
                    child: DropdownButton(
                        value: debrislingualmandibulakiri,
                        elevation: 10,
                        items: const [
                          DropdownMenuItem(
                            value: 0,
                            child: Text("0"),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            child: Text("1"),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text("2"),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text("3"),
                          ),
                        ],
                        onChanged: (dynamic value) {
                          setState(() {
                            debrisbukalmaxilakiri = value;
                          });
                        }),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          const Center(
            child: Text('Kalkulus'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                      width: (MediaQuery.of(context).size.width) / 4,
                      child: const Text('Maxila Bukal')),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 100) / 4,
                    child: DropdownButton(
                        value: kalkulusbukalmaxilakanan,
                        elevation: 10,
                        items: const [
                          DropdownMenuItem(
                            value: 0,
                            child: Text("0"),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            child: Text("1"),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text("2"),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text("3"),
                          ),
                        ],
                        onChanged: (dynamic value) {
                          setState(() {
                            kalkulusbukalmaxilakanan = value;
                          });
                        }),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 100) / 4,
                    child: DropdownButton(
                        value: kalkulusbukalmaxilaant,
                        elevation: 10,
                        items: const [
                          DropdownMenuItem(
                            value: 0,
                            child: Text("0"),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            child: Text("1"),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text("2"),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text("3"),
                          ),
                        ],
                        onChanged: (dynamic value) {
                          setState(() {
                            kalkulusbukalmaxilaant = value;
                          });
                        }),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 100) / 4,
                    child: DropdownButton(
                        value: kalkulusbukalmaxilakiri,
                        elevation: 10,
                        items: const [
                          DropdownMenuItem(
                            value: 0,
                            child: Text("0"),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            child: Text("1"),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text("2"),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text("3"),
                          ),
                        ],
                        onChanged: (dynamic value) {
                          setState(() {
                            kalkulusbukalmaxilakiri = value;
                          });
                        }),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                      width: (MediaQuery.of(context).size.width) / 4,
                      child: const Text('Maxila Palatal')),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 100) / 4,
                    child: DropdownButton(
                        value: kalkuluspalatalmaxilakanan,
                        elevation: 10,
                        items: const [
                          DropdownMenuItem(
                            value: 0,
                            child: Text("0"),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            child: Text("1"),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text("2"),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text("3"),
                          ),
                        ],
                        onChanged: (dynamic value) {
                          setState(() {
                            kalkulusbukalmaxilakanan = value;
                          });
                        }),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 100) / 4,
                    child: DropdownButton(
                        value: kalkuluspalatalmaxilaant,
                        elevation: 10,
                        items: const [
                          DropdownMenuItem(
                            value: 0,
                            child: Text("0"),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            child: Text("1"),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text("2"),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text("3"),
                          ),
                        ],
                        onChanged: (dynamic value) {
                          setState(() {
                            kalkulusbukalmaxilaant = value;
                          });
                        }),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 100) / 4,
                    child: DropdownButton(
                        value: kalkuluspalatalmaxilakiri,
                        elevation: 10,
                        items: const [
                          DropdownMenuItem(
                            value: 0,
                            child: Text("0"),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            child: Text("1"),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text("2"),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text("3"),
                          ),
                        ],
                        onChanged: (dynamic value) {
                          setState(() {
                            kalkulusbukalmaxilakiri = value;
                          });
                        }),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                      width: (MediaQuery.of(context).size.width) / 4,
                      child: const Text('Mandibula Bukal')),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 100) / 4,
                    child: DropdownButton(
                        value: kalkulusbukalmandibulakanan,
                        elevation: 10,
                        items: const [
                          DropdownMenuItem(
                            value: 0,
                            child: Text("0"),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            child: Text("1"),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text("2"),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text("3"),
                          ),
                        ],
                        onChanged: (dynamic value) {
                          setState(() {
                            kalkulusbukalmaxilakanan = value;
                          });
                        }),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 100) / 4,
                    child: DropdownButton(
                        value: kalkulusbukalmandibulaant,
                        elevation: 10,
                        items: const [
                          DropdownMenuItem(
                            value: 0,
                            child: Text("0"),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            child: Text("1"),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text("2"),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text("3"),
                          ),
                        ],
                        onChanged: (dynamic value) {
                          setState(() {
                            kalkulusbukalmaxilaant = value;
                          });
                        }),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 100) / 4,
                    child: DropdownButton(
                        value: kalkulusbukalmandibulakiri,
                        elevation: 10,
                        items: const [
                          DropdownMenuItem(
                            value: 0,
                            child: Text("0"),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            child: Text("1"),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text("2"),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text("3"),
                          ),
                        ],
                        onChanged: (dynamic value) {
                          setState(() {
                            kalkulusbukalmaxilakiri = value;
                          });
                        }),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                      width: (MediaQuery.of(context).size.width) / 4,
                      child: const Text('Mandibula Lingual')),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 100) / 4,
                    child: DropdownButton(
                        value: kalkuluslingualmandibulakanan,
                        elevation: 10,
                        items: const [
                          DropdownMenuItem(
                            value: 0,
                            child: Text("0"),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            child: Text("1"),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text("2"),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text("3"),
                          ),
                        ],
                        onChanged: (dynamic value) {
                          setState(() {
                            kalkulusbukalmaxilakanan = value;
                          });
                        }),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 100) / 4,
                    child: DropdownButton(
                        value: kalkuluslingualmandibulaant,
                        elevation: 10,
                        items: const [
                          DropdownMenuItem(
                            value: 0,
                            child: Text("0"),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            child: Text("1"),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text("2"),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text("3"),
                          ),
                        ],
                        onChanged: (dynamic value) {
                          setState(() {
                            kalkulusbukalmaxilaant = value;
                          });
                        }),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 100) / 4,
                    child: DropdownButton(
                        value: kalkuluslingualmandibulakiri,
                        elevation: 10,
                        items: const [
                          DropdownMenuItem(
                            value: 0,
                            child: Text("0"),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            child: Text("1"),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text("2"),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text("3"),
                          ),
                        ],
                        onChanged: (dynamic value) {
                          setState(() {
                            kalkulusbukalmaxilakiri = value;
                          });
                        }),
                  ),
                ],
              ),
            ],
          ),
          Text('jumlah debris index : ${DebrisIndex / 6}'),
          Text('jumlah calculus index : ${KalkulusIndex / 6}'),
          Text('OHI INDEX : ${OHIIndex / 6}'),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const GI();
                }));
              },
              child: const Text('Lanjut isi Gingival Index')),
        ],
      ),
    );
  }
}
