import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import url_launcher
import 'package:permission_handler/permission_handler.dart'; // Import permission_handler

class homesuba extends StatefulWidget {
  const homesuba({super.key});

  @override
  State<homesuba> createState() => _homesubaState();
}

class _homesubaState extends State<homesuba> {
  // Function to open dialer with a given phone number
 void _makePhoneCall(String phoneNumber) async {
  final PermissionStatus status = await Permission.phone.request();
  print("Phone permission status: $status");

  if (status.isGranted) {
    try {
      final Uri url = Uri.parse("tel://$phoneNumber");  // Ensure correct format
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        print("Could not launch $url");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Could not launch $url")),
        );
      }
    } catch (e) {
      print("Error launching phone call: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error launching phone call")),
      );
    }
  } else {
    print("Permission denied");
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Permission denied to make calls")),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 10),
          const Text(
            "สายด่วน\nการเดินทาง",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              print("Image Button Pressed!");
            },
            child: Image.asset(
              'assets/images/customer-service.png',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(
                  contactList.length,
                  (index) => Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 5),
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
                      trailing: const Icon(Icons.call),
                      onTap: () => _makePhoneCall(contactList[index]['number']!),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<Map<String, String>> contactList = [
  {"name": "ข้อมูลจราจร", "number": "1197", "image": "assets/images/1197.jpg"},
  {"name": "ตำรวจทางหลวง", "number": "1193", "image": "assets/images/king.png"},
  {"name": "ตำรวจท่องเที่ยว", "number": "1155", "image": "assets/images/tours.png"},
  {"name": "สายด่วนทางด่วน", "number": "1543", "image": "assets/images/th.png"},
  {"name": "ขสมก.", "number": "1348", "image": "assets/images/morkor.jpg"},
  {"name": "การรถไฟแห่งประเทศไทย", "number": " 1690", "image": "assets/images/trian.png"},
  {"name": "สายด่วน ขนส่ง", "number": " 1584", "image": "assets/images/colombia.png"},
  {"name": "กรมทางหลวง", "number": " 1146", "image": "assets/images/kom.png"},
  {"name": "ศูนย์ความปลอดภัยคมนาคม", "number": " 1356", "image": "assets/images/moth.png"},
];
