import 'package:flutter/material.dart';

class AboutUI extends StatefulWidget {
  const AboutUI({super.key});

  @override
  State<AboutUI> createState() => _AboutUIState();
}

class _AboutUIState extends State<AboutUI> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
        
        centerTitle: true,
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
              'ผู้จัดทํา',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold
              )
            ),
            Image.asset(
              'assets/images/sau.png',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 5),
            Text(
              'มหาวิทยาลัยเอเชียอาคเนย์',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold
              )
            ),
              SizedBox(height: 40),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  width:200,
                  height: 200,
                  color: Colors.black,
                  child: Image.asset(
                    'assets/images/kaka.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover
                  )
              ),
              ),
                SizedBox(height: 20),
                Text(
              '6652410025',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
                Text(
              'ชัยสิทธิ เพิ่มผล',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
                Text(
              's6652410025@sau.ac.th',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
                Text(
              'DTI',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
                Text(
              'ศิลปศาสตร์และวิทยาศาสตร์',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
            
          ],
        ),
      ),
    );
  }
}