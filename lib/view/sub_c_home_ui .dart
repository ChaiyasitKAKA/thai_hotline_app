import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; 


class homesubc extends StatefulWidget {
  const homesubc({super.key});

  @override
  State<homesubc> createState() => _homesubcState();
}

class _homesubcState extends State<homesubc> {
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
            SizedBox(
              height: 10,
            ),
            Text(
              "ธนาคาร",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/images/bank.png',
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
  {"name": "ธนาคารกรุงเทพ", "number": "1333", "image": "assets/images/c1.png"},
  {"name": "ธนาคารออมสิน", "number":"1115", "image": "assets/images/c2.png"},
  {"name": "ธนาคารกสิกรไทย", "number":"02 888 8888", "image": "assets/images/c3.png"},
  {"name": "ธนาคารกรุงไทย", "number":"02 111 1111", "image": "assets/images/c4.png"},
  {"name": "ธนาคารกรุงศรีอยุธยา.", "number": "1572", "image": "assets/images/c5.png"},
  {"name": "ttb", "number": "1428", "image": "assets/images/c6.png"},
  {"name": "citi bank", "number": "1588", "image": "assets/images/c7.png"},
  {"name": "LH bank", "number": "1327", "image": "assets/images/c8.png"},
  {"name": "GH bank.", "number": "02 6544 9000", "image": "assets/images/c9.png"},
  {"name": "SCB.", "number": "02 777 7777", "image": "assets/images/c10.png"},
  {"name": "ธนาคารเกียรตินาคินภัทร.", "number": "02 165 5555", "image": "assets/images/c11.png"},
  {"name": "ธนาคารไทยเครดิต เพื่อรายย่อย.", "number": "02 697 5454", "image": "assets/images/x12.png"},
  {"name": "UOB.", "number": "02 285 1555", "image": "assets/images/c13.jpg"},
  {"name": "TISCO.", "number": "02 633 6000", "image": "assets/images/c13.png"},
  {"name": "ธนาคารอิสลามแห่งประเทศไทย.", "number": "02 204 2766", "image": "assets/images/c14.jpg"},
  {"name": "ธนาคารซีไอเอ็มบีไทย.", "number": "02 622 7777", "image": "assets/images/c15.png"},
];