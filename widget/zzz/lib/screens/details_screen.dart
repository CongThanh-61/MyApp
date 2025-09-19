import 'package:flutter/material.dart';
import '../models/campus.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Campus campus = ModalRoute.of(context)!.settings.arguments as Campus;

    return Scaffold(
      appBar: AppBar(title: Text(campus.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Địa chỉ campus
            Text(
              'Địa chỉ:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              campus.address,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),

            // Hình ảnh campus
            Text(
              'Hình ảnh:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Image.network(
              campus.image,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
