// ignore_for_file: non_constant_identifier_names, file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

import '../../HalamanRumah/HalamanRumah.dart';

class daftarshiftpasienlama extends StatefulWidget {
  const daftarshiftpasienlama({Key? key}) : super(key: key);

  @override
  State<daftarshiftpasienlama> createState() => _daftarshiftpasienlamaState();
}

class _daftarshiftpasienlamaState extends State<daftarshiftpasienlama> {
  TextEditingController NamaPreseptor = TextEditingController();
  TextEditingController NoRM = TextEditingController();

  String? _valuepreseptor = 'pilih';
  String? _valueshift = 'pilih';
  String? _valuestase = 'pilih';
  String? _valuetindakan = 'pilih';

  bool SwitchOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrasi'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Theme(
          data: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.black)
                  .copyWith(primary: Colors.black)),
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: Column(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    (SwitchOn)
                        ? const Text('Nomor RM : 1811412020')
                        : Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 4),
                      child: TextFormField(
                        controller: NoRM,
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

                          hintText: "Nomor RM",

                          //make hint text
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontFamily: "verdana_regular",
                            fontWeight: FontWeight.w400,
                          ),

                          //create lable
                          labelText: "Nomor RM",
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
                    Center(
                      child: (SwitchOn)
                          ? Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 8,
                              ),
                              child: Column(
                                children: const [
                                  Text('Nama Pasien : Muhammad Taufik'),
                                  Text('Nama Koas : Muhammad Daffa Safra'),
                                  Text('NIM : 2241412025'),
                                  Divider(
                                    height: 2,
                                  ),
                                ],
                              )),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                            ),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Stase : ',
                                  textAlign: TextAlign.left,
                                ),
                                DropdownButton(
                                    value: _valuestase,
                                    elevation: 10,
                                    items: const [
                                      DropdownMenuItem(
                                        value: 'pilih',
                                        child: Text("pilih"),
                                      ),
                                      DropdownMenuItem(
                                        value: 'Perio',
                                        child: Text("Perio"),
                                      ),
                                      DropdownMenuItem(
                                        value: 'KG',
                                        child: Text("KG"),
                                      ),
                                      DropdownMenuItem(
                                        value: 'IPM',
                                        child: Text("IPM"),
                                      ),
                                    ],
                                    onChanged: (dynamic value) {
                                      setState(() {
                                        _valuestase = value;
                                      });
                                    }),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                            ),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Preseptor : ',
                                  textAlign: TextAlign.left,
                                ),
                                DropdownButton(
                                    value: _valuepreseptor,
                                    elevation: 10,
                                    items: const [
                                      DropdownMenuItem(
                                        value: 'pilih',
                                        child: Text("pilih"),
                                      ),
                                      DropdownMenuItem(
                                        value: 'drg Kosno',
                                        child: Text("drg Kosno"),
                                      ),
                                      DropdownMenuItem(
                                        value: 'drg Dedi',
                                        child: Text("drg Dedi"),
                                      ),
                                      DropdownMenuItem(
                                        value: 'drg Gunawan',
                                        child: Text("drg Gunawan"),
                                      ),
                                      DropdownMenuItem(
                                        value: 'drg Meiza',
                                        child: Text("drg Meiza"),
                                      ),
                                    ],
                                    onChanged: (dynamic value) {
                                      setState(() {
                                        _valuepreseptor = value;
                                      });
                                    }),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                            ),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Shift : ',
                                  textAlign: TextAlign.left,
                                ),
                                DropdownButton(
                                    value: _valueshift,
                                    elevation: 10,
                                    items: const [
                                      DropdownMenuItem(
                                        value: 'pilih',
                                        child: Text("pilih"),
                                      ),
                                      DropdownMenuItem(
                                        value: '1',
                                        child: Text("1"),
                                      ),
                                      DropdownMenuItem(
                                        value: '2',
                                        child: Text("2"),
                                      ),
                                      DropdownMenuItem(
                                        value: '3',
                                        child: Text("3"),
                                      ),
                                    ],
                                    onChanged: (dynamic value) {
                                      setState(() {
                                        _valueshift = value;
                                      });
                                    }),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                            ),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Tindakan : ',
                                  textAlign: TextAlign.left,
                                ),
                                DropdownButton(
                                    value: _valuetindakan,
                                    elevation: 10,
                                    items: const [
                                      DropdownMenuItem(
                                        value: 'pilih',
                                        child: Text("pilih"),
                                      ),
                                      DropdownMenuItem(
                                        value: 'Screening Perio',
                                        child: Text("Screening Perio"),
                                      ),
                                      DropdownMenuItem(
                                        value: 'SRP manual',
                                        child: Text("SRP manual"),
                                      ),
                                      DropdownMenuItem(
                                        value: 'SRP elektrik',
                                        child: Text("SRP elektrik"),
                                      ),
                                      DropdownMenuItem(
                                        value: 'Kontrol',
                                        child: Text("Kontrol"),
                                      ),
                                      DropdownMenuItem(
                                        value: 'Phantom',
                                        child: Text("Phantom"),
                                      ),
                                    ],
                                    onChanged: (dynamic value) {
                                      setState(() {
                                        _valuetindakan = value;
                                      });
                                    }),
                              ],
                            ),
                          ),
                        ],
                      )
                          : ElevatedButton(
                          onPressed: () {
                            SwitchOn = true;
                            setState(() {});
                          },
                          child: const Text('Cek Data')),
                    ),
                    const Divider(
                      height: 3,
                      thickness: 2,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Center(
                      child: (_valuetindakan == 'SRP elektrik')
                          ? Column(
                        children: [
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  const Text('ALAT : '),
                                  const Divider(
                                    thickness: 1,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 8,
                                      ),
                                      child: Column(
                                        children: const [
                                          Text('Tip Scaller'),
                                          Text('Scaller handpiece'),
                                          Text('handpiece lowspeed'),
                                        ],
                                      )),
                                ],
                              ),
                              Column(
                                children: [
                                  const Text('BAHAN : '),
                                  const Divider(
                                    thickness: 1,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 8,
                                      ),
                                      child: Column(
                                        children: const [
                                          Text('Povidon Iodin'),
                                          Text('Pumice'),
                                          Text('Disclosing Solution'),
                                        ],
                                      )),
                                ],
                              ),
                            ],
                          )
                        ],
                      )
                          : (_valuetindakan == 'Screening Perio')
                          ? Column(
                        children: [
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  const Text('ALAT : '),
                                  const Divider(
                                    thickness: 1,
                                  ),
                                  Padding(
                                      padding:
                                      const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 8,
                                      ),
                                      child: Column(
                                        children: const [
                                          Text('-'),
                                        ],
                                      )),
                                ],
                              ),
                              Column(
                                children: [
                                  const Text('BAHAN : '),
                                  const Divider(
                                    thickness: 1,
                                  ),
                                  Padding(
                                      padding:
                                      const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 8,
                                      ),
                                      child: Column(
                                        children: const [
                                          Text('Povidon Iodin'),
                                          Text('Disclosing Solution'),
                                        ],
                                      )),
                                ],
                              ),
                            ],
                          )
                        ],
                      )
                          : null,
                    ),
                  ],
                ),

                SizedBox(
                  height: 80,
                  child: Builder(
                    builder: (context) {
                      final GlobalKey<SlideActionState> key = GlobalKey();
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SlideAction(
                          outerColor: Colors.black,
                          innerColor: Colors.white,
                          sliderButtonIconSize: 16,
                          key: key,
                          text: 'Daftar Pasien',
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
              ],))),
    );
  }
}
