
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class pasienlama extends StatefulWidget {
  const pasienlama({Key? key}) : super(key: key);

  @override
  State<pasienlama> createState() => _pasienlamaState();
}

class _pasienlamaState extends State<pasienlama> {
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
        child: SizedBox(
            height: ((MediaQuery.of(context).size.width)-20) / 2 ,
            width: ((MediaQuery.of(context).size.width)-20) / 2 ,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text(
                  'Daftar Pasien Lama',
                  style: GoogleFonts.pathwayGothicOne(
                      fontSize: 20, color: Colors.white),
                ),
                ],
              ),
            )));
  }
}
