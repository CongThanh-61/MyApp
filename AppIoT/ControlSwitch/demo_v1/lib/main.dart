import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IoT Control Switch',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ControlSwitchPage(),
    );
  }
}
class ControlSwitchPage extends StatefulWidget {
  const ControlSwitchPage({super.key});
  @override
  State<ControlSwitchPage>createState() => _ControlSwitchPageState();
}
class _ControlSwitchPageState extends State<ControlSwitchPage> {
  bool _isDeviceOn = false;
  

  void _toggleSwitch(bool value) {
    setState(() {
      _isDeviceOn = value;
    });
  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar:AppBar(
          title: const Text('Dieu khien thiet bi IoT'),
        ),
        body:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(_isDeviceOn ? Icons.lightbulb : Icons.lightbulb_outline,
              color:_isDeviceOn ? Colors.yellow : Colors.red,size: 100,
              ),
              const SizedBox(height: 20),
              Text(
                _isDeviceOn ? 'Thiet bi ON' : 'Thiet bi OFF',
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20),
              Switch(value: _isDeviceOn
              , onChanged: _toggleSwitch,
              activeThumbColor: Colors.green,
              inactiveThumbColor: Colors.red,),
            ],
            
          )
        )
      );
    }
  }

