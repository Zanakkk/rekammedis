// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:slide_to_act/slide_to_act.dart';

import '../../api/AuthServices.dart';
import 'isidata.dart';

class RegisEmailScreen extends StatefulWidget {
  const RegisEmailScreen({Key? key}) : super(key: key);

  @override
  _RegisEmailScreenState createState() => _RegisEmailScreenState();
}

class _RegisEmailScreenState extends State<RegisEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('LOGIN'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(''),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Image.asset(
                    'assets/onboard/Halaman3.png',
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.width * 0.8,
                  ),
                ),
              ),
              StreamBuilder(
                  stream: FirebaseAuth.instance.authStateChanges(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return Builder(
                        builder: (context) {
                          final GlobalKey<SlideActionState> key = GlobalKey();
                          return Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SlideAction(
                              outerColor: Colors.black,
                              innerColor: Colors.white,
                              key: key,
                              text: 'Lanjut ke Aplikasi',
                              textStyle: const TextStyle(
                                  fontSize: 20, color: Colors.white),
                              onSubmit: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const IsiData();
                                }));
                                Future.delayed(
                                  const Duration(seconds: 1),
                                  () => key.currentState?.reset(),
                                );
                              },
                            ),
                          );
                        },
                      );
                    } else {
                      return Column(
                        children: [
                          SignInButton(
                            Buttons.GoogleDark,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.all(8),
                            text: "Sign up with Google",
                            onPressed: () {
                              AuthServices.signInWithGoogle();
                            },
                          ),
                        ],
                      );
                    }
                  }),
            ],
          ),
        ));
  }
}
