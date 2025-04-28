import 'package:flutter/material.dart';
import 'package:reusable_switch_btn/reusable_switch_btn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reusable Switch Btn Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch Button Examples'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('AppSwitch Example', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            AppSwitch(
              activeTxt: 'Active',
              disableTxt: 'Inactive',
              initSwitched: true,
              onChanged: (bool value) {
                print('AppSwitch state: \$value');
              },
            ),
            const SizedBox(height: 24),
            const Text('AppSwitchCard Example', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            AppSwitchCard(
              title: 'Enable Feature X',
              activeTxt: 'Enabled',
              disableTxt: 'Disabled',
              initSwitched: false,
              onChanged: (bool value) {
                print('Feature X is: \$value');
              },
            ),
            const SizedBox(height: 24),
            const Text('NormalSwitch Example', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            NormalSwitch(
              isSwitched: true,
              onChanged: (bool value) {
                print('NormalSwitch state: \$value');
              },
            ),
          ],
        ),
      ),
    );
  }
}