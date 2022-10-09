// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'Odontogram.dart';

class isiLesi extends StatefulWidget {
  const isiLesi({Key? key}) : super(key: key);

  @override
  State<isiLesi> createState() => _isiLesiState();
}

class _isiLesiState extends State<isiLesi> {
  TextEditingController Lesi = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Isi Lesi'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.teal.shade900,
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: TextFormField(
              controller: Lesi,
              maxLines: 20,
              decoration: InputDecoration(
                focusColor: Colors.white,

                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),

                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                fillColor: Colors.grey,

                hintText: "Lesi",

                //make hint text
                hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontFamily: "verdana_regular",
                  fontWeight: FontWeight.w400,
                ),

                //create lable
                labelText: "Lesi",
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
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Odontogram();
                }));
              },
              child: const Text('Lanjut isi Odontogram'))
        ],
      ),
    );
  }
}
