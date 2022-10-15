// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

import 'pasien baru/rekammedis.dart';

class pasienbaru extends StatefulWidget {
  const pasienbaru({Key? key}) : super(key: key);

  @override
  State<pasienbaru> createState() => _pasienbaruState();
}

class _pasienbaruState extends State<pasienbaru> {
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
      home: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const RekamMedis()));
          },
          child: const Text('login')),
    );
  }
}
