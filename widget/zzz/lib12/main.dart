import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
///bybybybybyby

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: Center(
          child: Container(
            
            decoration: BoxDecoration(
              color:Colors.amberAccent[100],
              borderRadius: BorderRadius.circular(16),
              border:Border.all(color:Colors.orange,width: 20),
              boxShadow: [
                BoxShadow(
                  color:Color.fromARGB(255, 192, 97, 15),
                  blurRadius: 8,
                  offset:  const Offset(2, 4),
                )
              ]
              ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Thông tin học sinh',style:TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
                const SizedBox(height: 8,),
                const Divider(),
                const SizedBox(height: 8,),
                Row(
                  children: const[
                    Icon(Icons.class_,color:Colors.deepOrange),
                    SizedBox(width: 8),
                    Text('Lớp 5'),
                  ],
                ),
                const SizedBox(height: 16),
                Builder(
                  builder: (context) => ElevatedButton(
                    onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content:Text('Đã lưu thông tin'))
                  );
                },
                child: const Text('Đã lưu'),
                )
                )
              ] 
                )
              
            ),
            ),
          ),
        );
      
    
  }
}