import 'package:flutter/material.dart';
import '../models/campus.dart';

class HomeScreen extends StatelessWidget {
  //Dữ liệu tĩnh lưu trữ các thông tin cơ sở HUTECH
  final List<Campus> campuses = [
    Campus(
      name: 'Saigon Campus',
      address: '475A Điện Biên Phủ, P.25, Q.Bình Thạnh, TP.HCM',
      image:
          'https://file1.hutech.edu.vn/file/editor/homepage1/Phoi%20canh%20co%20so%20Hutech_co%20so%20DBP%20%20.jpg',
      color: '#FF5722',
    ),
    Campus(
      name: 'Ung Van Khiem Campus',
      address: '31/36 Ung Văn Khiêm, P.25, Q.Bình Thạnh, TP.HCM',
      image:
          'https://file1.hutech.edu.vn/file/editor/homepage1/ung-van-khiem.jpg',
      color: '#4CAF50',
    ),
    Campus(
      name: 'Thu Duc Campus',
      address: 'Khu Công nghệ cao TP.HCM, Xa lộ Hà Nội, TP. Thủ Đức',
      image:
          'https://file1.hutech.edu.vn/file/editor/homepage/stories/hinh202-hhh/Trung%20tam%20DTNNL%202.jpg',
      color: '#2196F3',
    ),
    Campus(
      name: 'Hitech Park Campus',
      address: 'Khu Công nghệ cao TP.HCM, P. Long Thạnh Mỹ, TP. Thủ Đức',
      image:
          'https://file1.hutech.edu.vn/file/editor/homepage/stories/hinh202-hhh/Vien-cong-nghe-cao.jpg',
      color: '#FFC107',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Campus tại HUTECH')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            for (var campus in campuses) ...[
              Card(
                color: Color(int.parse(campus.color.replaceFirst('#', '0xff'))),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      // Icon Home
                      Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      // Tên và địa chỉ campus
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              campus.name,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              campus.address,
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                      ),

                      // Nút chuyển đến chi tiết
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            '/details',
                            arguments: campus,
                          );
                        },
                        icon: Icon(Icons.arrow_forward, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10), // Tạo khoảng cách giữa các campus
            ],
          ],
        ),
      ),
    );
  }
}
