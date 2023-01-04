// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names, avoid_print, deprecated_member_use, unnecessary_null_comparison

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gender_picker/source/enums.dart';
import 'package:gender_picker/source/gender_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:async';
import '../../api/DatabaseServices.dart';
import '../../app/HalamanRumah/HalamanRumah.dart';

class IsiData extends StatefulWidget {
  const IsiData({Key? key}) : super(key: key);

  @override
  _IsiDataState createState() => _IsiDataState();
}

class _IsiDataState extends State<IsiData> {
  int currentstep = 0;

  TextEditingController nama = TextEditingController();
  TextEditingController NIM = TextEditingController();
  TextEditingController noHP = TextEditingController();
  TextEditingController alamat = TextEditingController();
  String? tanggal, bulan, tahun;
  String? gender;

  String? genderr;

  String? imageUrl;

  ImagePicker imagePicker = ImagePicker();
  late File file;

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference RSGM = firestore.collection('RSGM');

    final FirebaseAuth auth = FirebaseAuth.instance;
    final User? user = auth.currentUser;
    final email = user!.email;

    String? valueRSGM = 'pilih';

    var cekstep = [false, false, false, false, false, false, false, false];

    List<Step> getSteps() => [
          Step(
              state: currentstep > 0 ? StepState.complete : StepState.indexed,
              isActive: currentstep >= 0,
              title: const Text('Nama'),
              content: TextFormField(
                controller: nama,
              ),
              subtitle: const Text('Nama Lengkapmu')),
          Step(
              state: currentstep > 1 ? StepState.complete : StepState.indexed,
              isActive: currentstep >= 1,
              title: const Text('NIM'),
              content: TextFormField(
                controller: NIM,
                keyboardType: TextInputType.number,
                cursorColor: Colors.black,
              ),
              subtitle: const Text('NIM')),
          Step(
              state: currentstep > 2 ? StepState.complete : StepState.indexed,
              isActive: currentstep >= 2,
              title: const Text('Jenis Kelamin'),
              content: GenderPickerWithImage(
                showOtherGender: false,
                verticalAlignedText: true,
                equallyAligned: true,

                selectedGenderTextStyle: const TextStyle(
                    color: Color(0xFF8b32a8), fontWeight: FontWeight.bold),
                unSelectedGenderTextStyle: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal),
                selectedGender: (genderr == 'Laki-Laki')
                    ? Gender.Male
                    : (genderr == 'Perempuan')
                        ? Gender.Female
                        : null,
                onChanged: (Gender) async {
                  if (Gender?.index == 0) {
                    genderr = 'Laki-Laki';
                  } else {
                    genderr = 'Perempuan';
                  }
                  if (kDebugMode) {
                    print(Gender?.index);
                  }
                },
                animationDuration: const Duration(milliseconds: 300),
                isCircular: true,
                maleText: 'Laki-Laki',
                femaleText: 'Perempuan',
                // default : true,
                opacityOfGradient: 0.4,
                padding: const EdgeInsets.all(3),
                size: 120, //default : 40
              ),
              subtitle: const Text('jenis kelaminmu')),
          Step(
            state: currentstep > 3 ? StepState.complete : StepState.indexed,
            isActive: currentstep >= 3,
            title: const Text('Upload Foto'),
            content: Column(
              children: <Widget>[
                (imageUrl != null)
                    ? Card(
                        elevation: 4,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Ink.image(
                                  image: NetworkImage(imageUrl!),
                                  height: MediaQuery.of(context).size.width,
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    : Container(
                        decoration: const BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        width: MediaQuery.of(context).size.width - 100,
                        height: MediaQuery.of(context).size.width - 100,
                        child: InkWell(
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 10, top: 32),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Upload Foto',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    'Tap Here',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87),
                                  ),
                                ],
                              )),
                          onTap: () {
                            uploadImage();
                          },
                        ),
                      ),
              ],
            ),
          ),
          Step(
              state: currentstep > 4 ? StepState.complete : StepState.indexed,
              isActive: currentstep >= 4,
              title: const Text('Tanggal Lahir'),
              content: DateTimePicker(
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
                  return null;
                },
                onSaved: (val) => print(val),
              )),
          Step(
            state: currentstep > 5 ? StepState.complete : StepState.indexed,
            isActive: currentstep >= 5,
            title: const Text('Nomor HP'),
            content: TextFormField(
              controller: noHP,
              keyboardType: TextInputType.phone,
            ),
          ),
          Step(
              state: currentstep > 6 ? StepState.complete : StepState.indexed,
              isActive: currentstep >= 6,
              title: const Text('Alamat'),
              content: TextFormField(
                controller: alamat,
                keyboardType: TextInputType.streetAddress,
              )),
          Step(
              state: currentstep > 7 ? StepState.complete : StepState.indexed,
              isActive: currentstep >= 7,
              title: const Text('RSGM'),
              content: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
                  child: StreamBuilder<QuerySnapshot>(
                      stream: RSGM.snapshots(),
                      builder: (_, AsyncSnapshot snapshot) {
                        if (!snapshot.hasData) {
                          return const Center(
                            child: CupertinoActivityIndicator(),
                          );
                        }
                        return DropdownSearch<String>(
                            dropdownDecoratorProps:
                                const DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                labelText: "RSGM",
                                hintText: "RSGM",
                              ),
                            ),
                            items: snapshot.data!.docs
                                .map((DocumentSnapshot document) {
                                  Map<String, dynamic> data =
                                      document.data()! as Map<String, dynamic>;
                                  return data["Nama"];
                                })
                                .toList()
                                .cast<String>(),
                            onChanged: (dynamic value) {
                              setState(() {
                                valueRSGM = value;
                              });
                            });
                      })))
        ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Isi Data'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: Theme(
        data: ThemeData(
            colorScheme:
                ColorScheme.fromSwatch().copyWith(primary: Colors.black)),
        child: Stepper(
            type: StepperType.vertical,
            currentStep: currentstep,
            steps: getSteps(),
            onStepContinue: () {
              final isLastStep = currentstep == getSteps().length - 1;
              if (isLastStep) {
              } else {
                setState(() {
                  currentstep += 1;
                });
              }
            },
            onStepTapped: (step) => setState(() {
                  currentstep = step;
                }),
            onStepCancel: currentstep == 0
                ? null
                : () {
                    setState(() {
                      currentstep -= 1;
                    });
                  },
            controlsBuilder: (context, details) {
              final isLastStep = currentstep == getSteps().length - 1;
              return Container(
                margin: const EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    (isLastStep == true)
                        ? Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                genderr ??= 'Laki-laki';
                                DatabaseServices.updateakunpayment(email, 0);
                                DatabaseServices.updateakun(
                                  email,
                                  nama.text,
                                  NIM.text,
                                  genderr!,
                                  tanggal,
                                  bulan,
                                  tahun!,
                                  alamat.text,
                                  noHP.text,
                                  imageUrl.toString(),
                                  valueRSGM!,
                                );

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HalamanRumah()),
                                );
                              },
                              child: const Text('Konfirmasi'),
                            ),
                          )
                        : (cekstep[currentstep] == false)
                            ? Expanded(
                  child: ElevatedButton(
                    onPressed: details.onStepCancel,
                    child: const Text('balik'),
                  ),
                )
                            : Expanded(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: const Text('kalakang'),
                                ),
                              ),
                    const SizedBox(
                      width: 20,
                    ),
                    if (currentstep != 0)

                    Expanded(
                      child: ElevatedButton(
                        onPressed: details.onStepContinue,
                        child: const Text('lanjut'),
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }

  uploadImage() async {
    final storage = FirebaseStorage.instance;
    final picker = ImagePicker();
    PickedFile? image;

    //Check Permissions
    await Permission.photos.request();

    image = await picker.getImage(source: ImageSource.gallery);

    var file = File(image!.path);

    final fileName = basename(file.path);
    final destination = 'userprofile/$fileName';

    if (image != null) {
      //Upload to Firebase
      var snapshot = await storage
          .ref()
          .child(destination)
          .putFile(file)
          .whenComplete(() => null);

      var downloadUrl = await snapshot.ref.getDownloadURL();

      setState(() {
        imageUrl = downloadUrl;
      });
    }
  }

  Future pickImageCamera() async {
    var image = await imagePicker.pickImage(source: ImageSource.camera);
    if (image != null) {
      setState(() {
        file = File(image.path);
        imageUrl = image as String?;
      });
    }
  }

  uploadProfileImage() async {
    var image = await imagePicker.pickImage(source: ImageSource.gallery);
    Reference reference = FirebaseStorage.instance
        .ref()
        .child('profileImage/${basename(image!.path)}');
    UploadTask uploadTask = reference.putFile(file);
    TaskSnapshot snapshot = await uploadTask;
    imageUrl = await snapshot.ref.getDownloadURL();
  }
}
