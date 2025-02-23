import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

PageViewModel insubC() {
   return PageViewModel(
    titleWidget: const SizedBox(),
    bodyWidget: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 100.0), 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, 
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/bank.png', 
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
                    text: "เมื่อเงินคือสิ่งสำคัญสำหรับการดำเนินชีวิต\n กิน เที่ยว ซื้อสินค้า \nการเดินทาง การรักษาพยาบาล \nหรือโดนเหตุมิจฉาชีพ \nแก๊งคอลเซ็นเตอร์หลอกลวง \nสามารถติดต่อธนาคารโดยตรง\n ได้เลย   ",
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
            "สายด่วน\nธนาคาร", 
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
