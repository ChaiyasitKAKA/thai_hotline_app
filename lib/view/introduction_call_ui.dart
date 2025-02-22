import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:thai_hotline_app/view/home_ui.dart';
import 'package:thai_hotline_app/view/sub_a_introduction_call_ui%20.dart';
import 'package:thai_hotline_app/view/sub_b_introduction_call_ui.dart';
import 'package:thai_hotline_app/view/sub_c_introduction_call_ui.dart';
import 'package:thai_hotline_app/view/sub_d_introduction_call_ui.dart';

class IntroductionCallUi extends StatefulWidget {
  const IntroductionCallUi({super.key});

  @override
  State<IntroductionCallUi> createState() => _IntroductionCallUiState();
}

class _IntroductionCallUiState extends State<IntroductionCallUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IntroductionScreen(
        pages: [
          insubA(),
          insubB(),
          insubC(),
          insubD(),
        ],
        done: const Text("โทรเลย",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        onDone: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const HomeUi()),
          );
        },
        
        next: const Icon(Icons.navigate_next_outlined, size: 25, color: Colors.black),
        skip: const Text("ข้าม",
            style: TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 20,
              color: Colors.black,
              ),
              ),
        showSkipButton: true,
        dotsDecorator: DotsDecorator(
          size: const Size.square(20.0,),
          color: Colors.black26,
          activeSize: const Size(25, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
        ),
      ),
    );
  }
}
