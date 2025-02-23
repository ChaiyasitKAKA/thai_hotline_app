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
        done: Text("โทรเลย",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.blue)),
        onDone: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) =>  HomeUi()),
          );
        },
        
        next: Icon(Icons.navigate_next_outlined, size: 25, color: Colors.blue),
        skip:  Text("ข้าม",
            style: TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 20,
              color: Colors.blue,
              ),
              ),
        showSkipButton: true,
        dotsDecorator: DotsDecorator(
          size: Size.square(15.0,),
          color: Colors.black,
          activeSize:  Size(20, 20.0),
          activeColor: Colors.blue,
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
        ),
      ),
    );
  }
}
