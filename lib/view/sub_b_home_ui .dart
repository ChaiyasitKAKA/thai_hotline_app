import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; 


class homesubb extends StatefulWidget {
  const homesubb({super.key});

  @override
  State<homesubb> createState() => _homesubbState();
}

class _homesubbState extends State<homesubb> {
   Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Text(
              "อุบัติเหตุ\nเหตุฉุกเฉิน",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
             SizedBox(height: 10),
            Image.asset(
              'assets/images/patient.png',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: List.generate(
                    contactList.length,
                    (index) => Container(
                      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                     child: ListTile(
                        leading: Image.asset(
                          contactList[index]['image']!,
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                        title: Text(contactList[index]['name']!),
                        subtitle: Text(contactList[index]['number']!),
                        trailing:  Icon(Icons.call),
                        onTap: () => _makePhoneCall(contactList[index]['number']!),
                      ),
                    ),
                  ),
                
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Map<String, String>> contactList = [
  {"name": "เหตุด่วนเหตุร้าย", "number": "191", "image": "assets/images/b1.png"},
  {"name": "ไฟไหม้-สัตว์เข้าบ้าน",  "number": "199", "image": "assets/images/b2.jpg"},
  {"name": "แจ้งรถหาย", "number": "1192", "image": "assets/images/b1.png"},
  {"name": "อุบัติเหตุทางน้ำ", "number": "1196", "image": "assets/images/b3.jpg"},
  {"name": "แจ้งคนหาย", "number": "1300", "image": "assets/images/b4.png"},
  {"name": "ศูนย์ปลอดภัยคมนาคม", "number": " 1356", "image": "assets/images/moth.png"},
  {"name": "แพทย์กู้ชีพ", "number": " 1554", "image": "assets/images/b5.jpg"},
  {"name": "ศูนย์เอราวัณ", "number": " 1646", "image": "assets/images/b6.png"},
  {"name": "เจ็บป่่วยฉุกเฉิน", "number": "1669", "image": "assets/images/moth.png"},
];