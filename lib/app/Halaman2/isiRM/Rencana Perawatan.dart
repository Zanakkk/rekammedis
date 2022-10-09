// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:rekammedis/app/HalamanRumah/HalamanRumah.dart';
import 'package:slide_to_act/slide_to_act.dart';

class RencanaPerawatan extends StatefulWidget {
  const RencanaPerawatan({Key? key}) : super(key: key);

  @override
  State<RencanaPerawatan> createState() => _RencanaPerawatanState();
}

class _RencanaPerawatanState extends State<RencanaPerawatan> {
  String? Gigi11 = 'TAK';
  String? Gigi12 = 'TAK';
  String? Gigi13 = 'TAK';
  String? Gigi14 = 'TAK';
  String? Gigi15 = 'TAK';
  String? Gigi16 = 'TAK';
  String? Gigi17 = 'TAK';
  String? Gigi18 = 'TAK';

  TextEditingController gigi11S = TextEditingController();
  TextEditingController gigi11O = TextEditingController();
  TextEditingController gigi11A = TextEditingController();
  TextEditingController gigi11P = TextEditingController();

  TextEditingController gigi12S = TextEditingController();
  TextEditingController gigi12O = TextEditingController();
  TextEditingController gigi12A = TextEditingController();
  TextEditingController gigi12P = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rencana Perawatan'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.teal.shade900,
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height - 200,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Gigi 11 : ',
                        textAlign: TextAlign.left,
                      ),
                      DropdownButton(
                          value: Gigi11,
                          elevation: 10,
                          items: const [
                            DropdownMenuItem(
                              value: 'TAK',
                              child: Text("TAK"),
                            ),
                            DropdownMenuItem(
                              value: 'Problem',
                              child: Text("Problem"),
                            ),
                          ],
                          onChanged: (dynamic value) {
                            setState(() {
                              Gigi11 = value;
                            });
                          }),
                    ],
                  ),
                ),
                (Gigi11 == 'Problem')
                    ? Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width - 100,
                                child: TextFormField(
                                  controller: gigi11S,
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    focusColor: Colors.white,

                                    isDense: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),

                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.blue, width: 1.0),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    fillColor: Colors.grey,

                                    hintText: "S/",

                                    //make hint text
                                    hintStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontFamily: "verdana_regular",
                                      fontWeight: FontWeight.w400,
                                    ),

                                    //create lable
                                    labelText: "S/",
                                    //lable style
                                    labelStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontFamily: "verdana_regular",
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width - 100,
                                child: TextFormField(
                                  controller: gigi11O,
                                  maxLines: 6,
                                  decoration: InputDecoration(
                                    focusColor: Colors.white,

                                    isDense: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),

                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.blue, width: 1.0),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    fillColor: Colors.grey,

                                    hintText: "O/",

                                    //make hint text
                                    hintStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontFamily: "verdana_regular",
                                      fontWeight: FontWeight.w400,
                                    ),

                                    //create lable
                                    labelText: "O/",
                                    //lable style
                                    labelStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontFamily: "verdana_regular",
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width - 100,
                                child: TextFormField(
                                  controller: gigi11A,
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    focusColor: Colors.white,

                                    isDense: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),

                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.blue, width: 1.0),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    fillColor: Colors.grey,

                                    hintText: "A/",

                                    //make hint text
                                    hintStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontFamily: "verdana_regular",
                                      fontWeight: FontWeight.w400,
                                    ),

                                    //create lable
                                    labelText: "A/",
                                    //lable style
                                    labelStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontFamily: "verdana_regular",
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width - 100,
                                child: TextFormField(
                                  controller: gigi11A,
                                  maxLines: 3,
                                  decoration: InputDecoration(
                                    focusColor: Colors.white,

                                    isDense: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),

                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.blue, width: 1.0),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    fillColor: Colors.grey,

                                    hintText: "P/",

                                    //make hint text
                                    hintStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontFamily: "verdana_regular",
                                      fontWeight: FontWeight.w400,
                                    ),

                                    //create lable
                                    labelText: "P/",
                                    //lable style
                                    labelStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontFamily: "verdana_regular",
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ))
                    : Container(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Gigi 12 : ',
                        textAlign: TextAlign.left,
                      ),
                      DropdownButton(
                          value: Gigi12,
                          elevation: 10,
                          items: const [
                            DropdownMenuItem(
                              value: 'TAK',
                              child: Text("TAK"),
                            ),
                            DropdownMenuItem(
                              value: 'Problem',
                              child: Text("Problem"),
                            ),
                          ],
                          onChanged: (dynamic value) {
                            setState(() {
                              Gigi12 = value;
                            });
                          }),
                    ],
                  ),
                ),
                (Gigi12 == 'Problem')
                    ? Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width - 100,
                                child: TextFormField(
                                  controller: gigi12S,
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    focusColor: Colors.white,

                                    isDense: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),

                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.blue, width: 1.0),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    fillColor: Colors.grey,

                                    hintText: "S/",

                                    //make hint text
                                    hintStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontFamily: "verdana_regular",
                                      fontWeight: FontWeight.w400,
                                    ),

                                    //create lable
                                    labelText: "S/",
                                    //lable style
                                    labelStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontFamily: "verdana_regular",
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width - 100,
                                child: TextFormField(
                                  controller: gigi12O,
                                  maxLines: 6,
                                  decoration: InputDecoration(
                                    focusColor: Colors.white,

                                    isDense: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),

                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.blue, width: 1.0),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    fillColor: Colors.grey,

                                    hintText: "O/",

                                    //make hint text
                                    hintStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontFamily: "verdana_regular",
                                      fontWeight: FontWeight.w400,
                                    ),

                                    //create lable
                                    labelText: "O/",
                                    //lable style
                                    labelStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontFamily: "verdana_regular",
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width - 100,
                                child: TextFormField(
                                  controller: gigi12A,
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    focusColor: Colors.white,

                                    isDense: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),

                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.blue, width: 1.0),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    fillColor: Colors.grey,

                                    hintText: "A/",

                                    //make hint text
                                    hintStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontFamily: "verdana_regular",
                                      fontWeight: FontWeight.w400,
                                    ),

                                    //create lable
                                    labelText: "A/",
                                    //lable style
                                    labelStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontFamily: "verdana_regular",
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width - 100,
                                child: TextFormField(
                                  controller: gigi12A,
                                  maxLines: 3,
                                  decoration: InputDecoration(
                                    focusColor: Colors.white,

                                    isDense: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),

                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.blue, width: 1.0),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    fillColor: Colors.grey,

                                    hintText: "P/",

                                    //make hint text
                                    hintStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontFamily: "verdana_regular",
                                      fontWeight: FontWeight.w400,
                                    ),

                                    //create lable
                                    labelText: "P/",
                                    //lable style
                                    labelStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontFamily: "verdana_regular",
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ))
                    : Container(),
              ],
            ),
          ),
          SizedBox(
            height: 100,
            child: Builder(
              builder: (context) {
                final GlobalKey<SlideActionState> key = GlobalKey();
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SlideAction(
                    outerColor: Colors.teal.shade900,
                    innerColor: Colors.white,
                    key: key,
                    text: 'ACC Pasien',
                    textStyle:
                        const TextStyle(fontSize: 20, color: Colors.white),
                    onSubmit: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HalamanRumah()));

                      Future.delayed(
                        const Duration(seconds: 1),
                        () => key.currentState?.reset(),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
