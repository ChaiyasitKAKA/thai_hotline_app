import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

PageViewModel insubD() {
   return PageViewModel(
    titleWidget: const SizedBox(),
    bodyWidget: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 100.0), 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, 
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/utilities.png', 
            width: 150, 
            height: 150,
            fit: BoxFit.cover, 
          ),

          const SizedBox(height: 40), 

         
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text.rich(
                  TextSpan(
                    text: "น้ำไม่ไหล \nไฟฟ้าดับ\n โทรไม่ติด\n อินเตอร์เน็ตมีปัญหา\n เข้า Social Media ไม่ได้ \nรอไม่ได้  ",
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

          const SizedBox(height: 40), 

         
          Text(
            "สายด่วน\nสาธารณูปโภค", 
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
