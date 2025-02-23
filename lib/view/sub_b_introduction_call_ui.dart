import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

PageViewModel insubB() {
   return PageViewModel(
    titleWidget: const SizedBox(),
    bodyWidget: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 100.0), 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, 
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/patient.png', 
            width: 150, 
            height: 150,
            fit: BoxFit.cover, 
          ),

           SizedBox(height: 40), 

         
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text.rich(
                  TextSpan(
                    text: "อุบัติเหตุ ป่วยฉุกเฉิน ไฟใหม้ \nรถหาย สัตว์ร้านเข้าบ้าน \nทุกอย่างเกินขึ้นได้ตลอดเวลา \nจะดีกว่าไหม \nเมื่อพบเจออุบัติเหตุ เหตุด่วน เหตุร้าย\n สามารถโทรแจ้งได้ทันท่วงที\n ไม่ต้องรอ ",
                    style: TextStyle(fontSize: 16), 
                    children: <TextSpan>[
                      TextSpan(
                        text: "โทรเลย!!!", 
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),

           SizedBox(height: 40), 

         
          Text(
            "สายด่วน\nอุบัติเหตุ-เหตุฉุกเฉิน", 
            style: TextStyle(
              fontSize:30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}
