import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; 

class homesuba extends StatefulWidget {
  const homesuba({super.key});

  @override
  State<homesuba> createState() => _homesubaState();
}

class _homesubaState extends State<homesuba> {
  // Function to open dialer with a given phone number
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
  {"name": "ข้อมูลจราจร", "number": "1197", "image": "assets/images/1197.jpg"},
  {"name": "ตำรวจทางหลวง", "number":"1193", "image": "assets/images/king.png"},
  {"name": "ตำรวจท่องเที่ยว", "number":"1155", "image": "assets/images/tours.png"},
  {"name": "สายด่วนทางด่วน", "number":"1543", "image": "assets/images/th.png"},
  {"name": "ขสมก.", "number": "1348", "image": "assets/images/morkor.jpg"},
  {"name": "การรถไฟแห่งประเทศไทย", "number": "1690", "image": "assets/images/trian.png"},
  {"name": "สายด่วน ขนส่ง", "number": "1543", "image": "assets/images/colombia.png"},
  {"name": "กรมทางหลวง", "number": "1586", "image": "assets/images/kom.png"},
  {"name": "บขส.", "number": "1490", "image": "assets/images/a1.png"},
];