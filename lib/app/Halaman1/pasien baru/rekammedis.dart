// ignore_for_file: avoid_print, unnecessary_null_comparison, must_be_immutable, deprecated_member_use, avoid_types_as_parameter_names, non_constant_identifier_names, depend_on_referenced_packages, library_private_types_in_public_api

import 'package:date_time_picker/date_time_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gender_picker/source/enums.dart';
import 'package:gender_picker/source/gender_picker.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rekammedis/app/Halaman1/pasien%20baru/nomor%20RM.dart';
import 'package:rekammedis/app/Utils/LihatFoto.dart';
import 'package:slide_to_act/slide_to_act.dart';

class RekamMedis extends StatefulWidget {
  const RekamMedis({
    Key? key,
  }) : super(key: key);
  @override
  _RekamMedisState createState() => _RekamMedisState();
}

class _RekamMedisState extends State<RekamMedis> {
  int currentstep = 0;

  TextEditingController Nama = TextEditingController();
  TextEditingController NIK = TextEditingController();
  TextEditingController TempatLahir = TextEditingController();

  TextEditingController Alamat = TextEditingController();
  TextEditingController Kecamatan = TextEditingController();
  TextEditingController Kabupaten = TextEditingController();
  TextEditingController Provinsi = TextEditingController();

  TextEditingController pekerjaan = TextEditingController();

  TextEditingController noHP = TextEditingController();
  TextEditingController umurcontrol = TextEditingController();
  TextEditingController alamat = TextEditingController();
  TextEditingController agama = TextEditingController();
  TextEditingController suku = TextEditingController();
  TextEditingController keluhan = TextEditingController();
  TextEditingController jeniskelamin = TextEditingController();

  late bool switchidentitas = false;
  late bool switchnama = false;
  late bool switchgender = false;
  late bool switchumur = false;
  late bool switchnotelepon = false;
  late bool switchalamat = false;

  late bool switchnikah = false;
  late bool switchagama = false;
  late bool switchgoldar = false;
  late bool switchstatusmahasiswa = false;
  late bool switchpendidikan = false;
  late bool switchWNIWNA = false;

  late bool switchpekerjaan = false;
  late bool switchsuku = false;
  late bool switchkeluhan = false;
  late bool switchfoto = false;
  late bool consent = false;

  String? tanggal, bulan, tahun;
  String? gender;

  String? genderr;

  int? umur;
  int? tanggalawal = 0, bulanawal = 0, tahunawal = 0;

  String? _valuegoldar = 'pilih';
  String? _valuestatusmahasiswa = 'pilih';
  String? _valueidentitas = 'pilih';
  String? _valueagama = 'pilih';
  String? _valuenikah = 'pilih';
  String? _valueWNIWNA = 'pilih';
  String? _valuependidikan = 'pilih';

  bool isLastStep2 = false;
  String? imageUrlidentitas;
  String? imageUrlKRS;
  late String emaila;

  @override
  Widget build(BuildContext context) {
    final FirebaseAuth auth = FirebaseAuth.instance;
    final User? user = auth.currentUser;
    final useremail = user?.email;
    emaila = useremail!;

    bool selesai = false;
    return Scaffold(resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Rekam Medis'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: Theme(
          data: ThemeData(
              colorScheme:
                  ColorScheme.fromSwatch().copyWith(primary: Colors.black)),
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: (selesai == true)
                          ? MediaQuery.of(context).size.height - 200
                          : MediaQuery.of(context).size.height - 100,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Identitas : ',
                                    textAlign: TextAlign.left,
                                  ),
                                  DropdownButton(
                                      value: _valueidentitas,
                                      elevation: 10,
                                      items: const [
                                        DropdownMenuItem(
                                          value: 'pilih',
                                          child: Text("pilih"),
                                        ),
                                        DropdownMenuItem(
                                          value: 'KTP',
                                          child: Text("KTP"),
                                        ),
                                        DropdownMenuItem(
                                          value: 'SIM',
                                          child: Text("SIM"),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Paspor',
                                          child: Text("Paspor"),
                                        ),
                                      ],
                                      onChanged: (dynamic value) {
                                        setState(() {
                                          _valueidentitas = value;
                                          switchidentitas = true;
                                        });
                                      }),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              child: TextFormField(
                                controller: NIK,
                                autocorrect: true,
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

                                  hintText: "Nomor Identitas",

                                  //make hint text
                                  hintStyle: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontFamily: "verdana_regular",
                                    fontWeight: FontWeight.w400,
                                  ),

                                  //create lable
                                  labelText: 'Nomor Identitas',
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
                            (imageUrlidentitas != null)
                                ? Card(
                                    elevation: 4,
                                    clipBehavior: Clip.antiAlias,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: InkWell(
                                      child: Image(
                                        image: NetworkImage(imageUrlidentitas!),
                                        height:
                                            MediaQuery.of(context).size.width,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        fit: BoxFit.cover,
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => LihatFoto(
                                                      foto: imageUrlidentitas!,
                                                    )));
                                      },
                                    ),
                                  )
                                : ElevatedButton(
                                    onPressed: () async {
                                      await Permission.photos.request();
                                      uploadIdentitas();
                                    },
                                    child: const Text(
                                        'Upload Foto Kartu Identitas')),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Status Pasien : ',
                                    textAlign: TextAlign.left,
                                  ),
                                  DropdownButton(
                                      value: _valuestatusmahasiswa,
                                      elevation: 10,
                                      items: const [
                                        DropdownMenuItem(
                                          value: 'pilih',
                                          child: Text("pilih"),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Umum',
                                          child: Text("Umum"),
                                        ),
                                        DropdownMenuItem(
                                          value: 'UNAND',
                                          child: Text("UNAND"),
                                        ),
                                        DropdownMenuItem(
                                          value: 'FKG UNAND',
                                          child: Text("FKG UNAND"),
                                        ),
                                      ],
                                      onChanged: (dynamic value) {
                                        setState(() {
                                          _valuestatusmahasiswa = value;
                                          switchstatusmahasiswa = true;
                                        });
                                      }),
                                ],
                              ),
                            ),
                            (_valuestatusmahasiswa != 'pilih')
                                ? (_valuestatusmahasiswa != 'Umum')
                                    ? (imageUrlKRS != null)
                                        ? Card(
                                            elevation: 4,
                                            clipBehavior: Clip.antiAlias,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            child: InkWell(
                                              child: Image(
                                                image:
                                                    NetworkImage(imageUrlKRS!),
                                                height: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                fit: BoxFit.cover,
                                              ),
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            LihatFoto(
                                                              foto:
                                                                  imageUrlidentitas!,
                                                            )));
                                              },
                                            ),
                                          )
                                        : ElevatedButton(
                                            onPressed: () {
                                              uploadKRS();
                                            },
                                            child: const Text('Upload KRS'))
                                    : Container()
                                : Container(),
                            const Divider(
                              thickness: 2,
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              child: TextFormField(
                                controller: Nama,
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

                                  hintText: "Nama Lengkap",

                                  //make hint text
                                  hintStyle: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontFamily: "verdana_regular",
                                    fontWeight: FontWeight.w400,
                                  ),

                                  //create lable
                                  labelText: 'Nama',
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
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              child: TextFormField(
                                controller: TempatLahir,
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

                                  hintText: "Tempat Lahir",

                                  //make hint text
                                  hintStyle: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontFamily: "verdana_regular",
                                    fontWeight: FontWeight.w400,
                                  ),

                                  //create lable
                                  labelText: 'Tempat Lahir',
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
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              child: DateTimePicker(
                                type: DateTimePickerType.date,
                                dateMask: 'd MMM, yyyy',
                                initialValue: DateTime.now().toString(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime.now(),
                                icon: const Icon(Icons.event),
                                dateLabelText: 'Date',
                                selectableDayPredicate: (date) {
                                  // Disable weekend days to select from the calendar

                                  tanggal = date.day.toString();
                                  bulan = date.month.toString();
                                  tahun = date.year.toString();

                                  return true;
                                },
                                onChanged: (val) => print(val),
                                validator: (val) {
                                  print(val);

                                  return null;
                                },
                                onSaved: (val) => print(val),
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Jenis Kelamin : ',
                                      textAlign: TextAlign.left,
                                    ),
                                    GenderPickerWithImage(
                                      showOtherGender: false,
                                      verticalAlignedText: true,
                                      equallyAligned: true,

                                      selectedGenderTextStyle: const TextStyle(
                                          color: Color(0xFF8b32a8),
                                          fontWeight: FontWeight.bold),
                                      unSelectedGenderTextStyle:
                                          const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.normal),
                                      selectedGender: (genderr == 'Laki-Laki')
                                          ? Gender.Male
                                          : (genderr == 'Perempuan')
                                              ? Gender.Female
                                              : null,
                                      onChanged: (Gender) async {
                                        switchgender = true;

                                        if (Gender?.index == 0) {
                                          genderr = 'Laki-Laki';
                                        } else {
                                          genderr = 'Perempuan';
                                        }
                                        print(Gender?.index);
                                      },
                                      animationDuration:
                                          const Duration(milliseconds: 300),
                                      isCircular: true,
                                      maleText: 'Laki-Laki',
                                      femaleText: 'Perempuan',
                                      // default : true,
                                      opacityOfGradient: 0.4,
                                      padding: const EdgeInsets.all(3),
                                      size: 100, //default : 40
                                    ),
                                  ],
                                )),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              child: TextFormField(
                                controller: TempatLahir,
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

                                  hintText: "Tempat Lahir",

                                  //make hint text
                                  hintStyle: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontFamily: "verdana_regular",
                                    fontWeight: FontWeight.w400,
                                  ),

                                  //create lable
                                  labelText: 'Tempat Lahir',
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
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              child: TextFormField(
                                controller: Kecamatan,
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

                                  hintText: "Kecamatan",

                                  //make hint text
                                  hintStyle: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontFamily: "verdana_regular",
                                    fontWeight: FontWeight.w400,
                                  ),

                                  //create lable
                                  labelText: 'Kecamatan',
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
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              child: TextFormField(
                                controller: noHP,
                                autocorrect: true,
                                keyboardType: TextInputType.phone,
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

                                  hintText: "Nomor Telepon",

                                  //make hint text
                                  hintStyle: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontFamily: "verdana_regular",
                                    fontWeight: FontWeight.w400,
                                  ),

                                  //create lable
                                  labelText: 'Nomor Telepon',
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
                            const SizedBox(
                              height: 12,
                            ),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Golongan Darah : ',
                                          textAlign: TextAlign.left,
                                        ),
                                        DropdownButton(
                                            value: _valuegoldar,
                                            elevation: 10,
                                            items: const [
                                              DropdownMenuItem(
                                                value: 'pilih',
                                                child: Text("pilih"),
                                              ),
                                              DropdownMenuItem(
                                                value: 'A',
                                                child: Text("A"),
                                              ),
                                              DropdownMenuItem(
                                                value: 'B',
                                                child: Text("B"),
                                              ),
                                              DropdownMenuItem(
                                                value: 'AB',
                                                child: Text("AB"),
                                              ),
                                              DropdownMenuItem(
                                                value: 'O',
                                                child: Text("O"),
                                              ),
                                            ],
                                            onChanged: (dynamic value) {
                                              setState(() {
                                                _valuegoldar = value;
                                                switchgoldar = true;
                                              });
                                            }),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Status Pernikahan : ',
                                          textAlign: TextAlign.left,
                                        ),
                                        DropdownButton(
                                            value: _valuenikah,
                                            elevation: 10,
                                            items: const [
                                              DropdownMenuItem(
                                                value: 'pilih',
                                                child: Text("pilih"),
                                              ),
                                              DropdownMenuItem(
                                                value: 'Sudah Menikah',
                                                child: Text("Sudah menikah"),
                                              ),
                                              DropdownMenuItem(
                                                value: 'Belum Menikah',
                                                child: Text("Belum Menikah"),
                                              ),
                                              DropdownMenuItem(
                                                value: 'Duda',
                                                child: Text("Duda"),
                                              ),
                                              DropdownMenuItem(
                                                value: 'Janda',
                                                child: Text("Janda"),
                                              ),
                                            ],
                                            onChanged: (dynamic value) {
                                              setState(() {
                                                _valuenikah = value;
                                                switchnikah = true;
                                              });
                                            }),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Agama : ',
                                          textAlign: TextAlign.left,
                                        ),
                                        DropdownButton(
                                            value: _valueagama,
                                            elevation: 10,
                                            items: const [
                                              DropdownMenuItem(
                                                value: 'pilih',
                                                child: Text("pilih"),
                                              ),
                                              DropdownMenuItem(
                                                value: 'Islam',
                                                child: Text("Islam"),
                                              ),
                                              DropdownMenuItem(
                                                value: 'Kristen',
                                                child: Text("Kristen"),
                                              ),
                                              DropdownMenuItem(
                                                value: 'Katolik',
                                                child: Text("Katolik"),
                                              ),
                                              DropdownMenuItem(
                                                value: 'Hindu',
                                                child: Text("Hindu"),
                                              ),
                                              DropdownMenuItem(
                                                value: 'Budha',
                                                child: Text("Budha"),
                                              ),
                                            ],
                                            onChanged: (dynamic value) {
                                              setState(() {
                                                _valueagama = value;
                                                switchagama = true;
                                              });
                                            }),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Pendidikan: ',
                                          textAlign: TextAlign.left,
                                        ),
                                        DropdownButton(
                                            value: _valuependidikan,
                                            elevation: 10,
                                            items: const [
                                              DropdownMenuItem(
                                                value: 'pilih',
                                                child: Text("pilih"),
                                              ),
                                              DropdownMenuItem(
                                                value: 'TK',
                                                child: Text("TK"),
                                              ),
                                              DropdownMenuItem(
                                                value: 'SD',
                                                child: Text("SD"),
                                              ),
                                              DropdownMenuItem(
                                                value: 'SMP',
                                                child: Text("SMP"),
                                              ),
                                              DropdownMenuItem(
                                                value: 'SMA',
                                                child: Text("SMA"),
                                              ),
                                              DropdownMenuItem(
                                                value: 'Perguruan Tinggi',
                                                child: Text("Perguruan Tinggi"),
                                              ),
                                            ],
                                            onChanged: (dynamic value) {
                                              setState(() {
                                                _valuependidikan = value;
                                                switchpendidikan = true;
                                              });
                                            }),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Warga Negara : ',
                                          textAlign: TextAlign.left,
                                        ),
                                        DropdownButton(
                                            value: _valueWNIWNA,
                                            elevation: 10,
                                            items: const [
                                              DropdownMenuItem(
                                                value: 'pilih',
                                                child: Text("pilih"),
                                              ),
                                              DropdownMenuItem(
                                                value: 'WNI',
                                                child: Text("WNI"),
                                              ),
                                              DropdownMenuItem(
                                                value: 'WNA',
                                                child: Text("WNA"),
                                              ),
                                            ],
                                            onChanged: (dynamic value) {
                                              setState(() {
                                                _valueWNIWNA = value;
                                                switchWNIWNA = true;
                                              });
                                            }),
                                      ],
                                    ),
                                  ],
                                )),
                            SizedBox(
                              height: 100,
                            ),
                          ],
                        ),
                      )),
                  (selesai == true)
                      ? SizedBox(
                          height: 100,
                          child: Builder(
                            builder: (context) {
                              final GlobalKey<SlideActionState> key =
                                  GlobalKey();
                              return Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: SlideAction(
                                  outerColor: Colors.black,
                                  innerColor: Colors.white,
                                  key: key,
                                  text: 'Daftarkan Pasien',
                                  textStyle: const TextStyle(
                                      fontSize: 20, color: Colors.white),
                                  onSubmit: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const NoRMPasien()));

                                    Future.delayed(
                                      const Duration(seconds: 1),
                                      () => key.currentState?.reset(),
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                        )
                      : Container(),
                ],
              ))),
    );
  }

  uploadIdentitas() async {
    final storage = FirebaseStorage.instance;
    final picker = ImagePicker();
    PickedFile? image;

    //Check Permissions
    await Permission.photos.request();

    image = await picker.getImage(source: ImageSource.gallery);

    var file = File(image!.path);

    final fileName = basename(file.path);
    final destination = 'pasien/$emaila/identitas/$fileName';

    if (image != null) {
      //Upload to Firebase
      var snapshot = await storage
          .ref()
          .child(destination)
          .putFile(file)
          .whenComplete(() => null);

      var downloadUrl = await snapshot.ref.getDownloadURL();

      setState(() {
        imageUrlidentitas = downloadUrl;
      });
    } else {
      print('No Path Received');
    }
  }

  uploadKRS() async {
    final storage = FirebaseStorage.instance;
    final picker = ImagePicker();
    PickedFile? image;

    //Check Permissions
    await Permission.photos.request();

    image = await picker.getImage(source: ImageSource.gallery);

    var file = File(image!.path);

    final fileName = basename(file.path);
    final destination = 'pasien/$emaila/krs/$fileName';

    if (image != null) {
      //Upload to Firebase
      var snapshot = await storage
          .ref()
          .child(destination)
          .putFile(file)
          .whenComplete(() => null);

      var downloadUrl2 = await snapshot.ref.getDownloadURL();

      setState(() {
        imageUrlKRS = downloadUrl2;
      });
    } else {
      print('No Path Received');
    }
  }
}
