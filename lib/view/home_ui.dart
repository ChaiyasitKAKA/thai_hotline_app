import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thai_hotline_app/view/about_ui.dart.dart';
import 'package:thai_hotline_app/view/sub_a_home_ui%20.dart';
import 'package:thai_hotline_app/view/sub_b_home_ui%20.dart';
import 'package:thai_hotline_app/view/sub_c_home_ui%20.dart';
import 'package:thai_hotline_app/view/sub_d_home_ui%20.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  NotchBottomBarController _pageController = NotchBottomBarController(index: 0);
  List items = [
    homesuba(),
    homesubb(),
    homesubc(),
    homesubd(),
  ];

  int indexShow = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          'สายด่วน THAILAND',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.circleExclamation),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AboutUI()));
            },
          ),
        ],
        centerTitle: true,
      ),
      bottomNavigationBar: AnimatedNotchBottomBar(
        onTap: (valuePares) {
          setState(() {
            indexShow = valuePares;
          });
        },
        kIconSize: 25,
        kBottomRadius: 15,
       
        
        notchBottomBarController: _pageController,
        bottomBarItems: [
          BottomBarItem(
            inActiveItem: Image.asset(
              'assets/images/customer-service.png',
            ),
            activeItem: Image.asset(
              'assets/images/customer-service.png',
            ),
            itemLabel: 'การเดินทาง ',
          ),
          BottomBarItem(
            inActiveItem: Image.asset(
              'assets/images/patient.png',
            ),
            activeItem: Image.asset(
              'assets/images/patient.png',
            ),
            itemLabel: 'อุบัติเหตุ-เหตุฉุกเฉิน ',
          ),
          BottomBarItem(
            inActiveItem:  Image.asset(
              'assets/images/bank.png',
            ),
            activeItem:  Image.asset(
              'assets/images/bank.png',
            ),
            itemLabel: 'ธนาคาร ',
          ),
          BottomBarItem(
            inActiveItem: Image.asset(
              'assets/images/utilities.png',
            ),
            activeItem: Image.asset(
              'assets/images/utilities.png',
            ),
            itemLabel: 'สาธารณูปโภค ',
            
          ),
        ],
      ),
      body: items[indexShow],
    );
  }
}
