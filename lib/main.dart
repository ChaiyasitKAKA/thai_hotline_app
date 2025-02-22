import 'package:flutter/material.dart ';
import 'package:google_fonts/google_fonts.dart';
import 'package:thai_hotline_app/view/introduction_call_ui.dart';

void main() {
  runApp(const Emergencycall  ());
}

class Emergencycall extends StatefulWidget {
  const Emergencycall({super.key});

  @override
  State<Emergencycall> createState() => _EmergencycallState();
}

class _EmergencycallState extends State<Emergencycall> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroductionCallUi( ),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
           Theme.of(context).textTheme
        ),
      ),
    );
  }
}