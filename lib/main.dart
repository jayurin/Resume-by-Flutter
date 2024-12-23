import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile AppBar'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // รูปภาพที่แสดงที่ด้านบนสุด
              Stack(
                alignment: Alignment.center,
                children: [
                  // เงาวงกลมที่อยู่ข้างหลังรูปภาพ
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // ให้เป็นวงกลม
                      color: Colors.black.withOpacity(0.4), // สีเงา
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          blurRadius: 15, // ขยายเงา
                          offset: Offset(5, 5), // เงาเบี่ยงไปด้านขวาล่าง
                        ),
                      ],
                    ),
                  ),
                  // รูปภาพที่แสดงอยู่ตรงกลาง
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzGP5ExSaPQQHT6DhSXEnpatcU17U3QhqlcQ&s',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              // ชื่อ นามสกุล ชื่อเล่น
              Text(
                'Sittha Saiboontang Time',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              // ข้อความที่ประกอบด้วย Hobby, Food, Birthday
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hobby: Playgame'),
                    Text('Food: Salmon'),
                    Text('Birthday: 5th November'),
                  ],
                ),
              ),
              SizedBox(height: 16),
              // การศึกษา (Education)
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Education:\n'
                  'Elementary: aaa     Year: 50\n'
                  'Primary: bb             Year: 55\n'
                  'Highschool: sss     Year: 44\n'
                  'Undergrad: ddd      Year: 65',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
