import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; 


class homesubd extends StatefulWidget {
  const homesubd({super.key});

  @override
  State<homesubd> createState() => _homesubdState();
}

class _homesubdState extends State<homesubd> {
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
              "สาธารณูปโภค",
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
              'assets/images/utilities.png',
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
                          width: MediaQuery.of(context).size.width * 0.1, 
                          height: MediaQuery.of(context).size.height * 0.05,
                          fit: BoxFit.fill,
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
  {"name": "การไฟฟ้านครหลวง", "number": "1130", "image": "assets/images/d1.png"},
  {"name": "การไฟฟ้าภูมิภาค", "number":"1129", "image": "assets/images/d2.png"},
  {"name": "การไฟฟ้าฝ่ายผลิต", "number":"1416", "image": "assets/images/d3.jpg"},
  {"name": "การประปานครหลวง", "number":"1125", "image": "assets/images/d4.jpg"},
  {"name": "การประปาส่วนภูมิภาค.", "number": "1662", "image": "assets/images/d5.png"},
  {"name": "TRUE ", "number": "1678", "image": "assets/images/d6.png"},
  {"name": "AIS", "number": "1175", "image": "assets/images/d7.jpg"},
  {"name": "DTAC.", "number": "1100", "image": "assets/images/d8.jpg"},
  {"name": "TOT.", "number": "1100", "image": "assets/images/d9.png"},

];