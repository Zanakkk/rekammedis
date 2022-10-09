// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

import 'pasien baru/rekammedis.dart';

class pasienbaru extends StatefulWidget {
  const pasienbaru({Key? key}) : super(key: key);

  @override
  State<pasienbaru> createState() => _pasienbaruState();
}

class _pasienbaruState extends State<pasienbaru> {
  @override
  Widget build(BuildContext context) {
    return GradientCard(
        gradient: Gradients.taitanum,
        shadowColor: Gradients.tameer.colors.last.withOpacity(0.25),
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 8,
        child: InkWell(
          child: SizedBox(
              height: ((MediaQuery.of(context).size.width)-20) / 2 ,
              width: ((MediaQuery.of(context).size.width)-20) / 2 ,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text(
                    'Daftar Pasien Baru',
                    style: GoogleFonts.pathwayGothicOne(
                        fontSize: 20, color: Colors.white),
                  ),
                  ],
                ),
              )),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const RekamMedis()));
          },
        ));
  }
}
