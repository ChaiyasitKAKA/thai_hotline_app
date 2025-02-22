import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

PageViewModel insubA() {
  return PageViewModel(
    titleWidget: const SizedBox(),
    bodyWidget: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 100.0), 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, 
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/customer-service.png', 
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
                    text: "เมื่อต้องเดินทางทั้งในเมือง ออกต่างจังหวัด \nจะใกล้หรือไกลเพียงใด\n"
                        "สอบถามข้อมูลการเดินทาง การจราจร \nทางด่วน ทางหลัก ทางรอง\n"
                        "เส้นทางเลี่ยงการจราจรติดขัด\n"
                        "ข้อมูลรถทัวร์ รถไฟ ขสมก. BTS MRT\n"
                        'ชักช้าอยู่ใย  ',
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
            "สายด่วน\nการเดินทาง", 
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
