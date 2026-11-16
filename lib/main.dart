import 'package:flutter/material.dart';

void main() => runApp(const MKApp());

class MKApp extends StatelessWidget {
  const MKApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MK Worker Attendance',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String message = 'M K Construction - Aaravi Arete';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MK Worker Attendance')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text('M K Construction',
              style: TextStyle(fontSize: 24)),
          const Text('Aaravi Arete'),
          const SizedBox(height: 25),
          FilledButton(
            onPressed: () => setState(() {
              message = 'Punch In - GPS અને Selfie સેટઅપ બાકી છે';
            }),
            child: const Text('PUNCH IN'),
          ),
          FilledButton(
            onPressed: () => setState(() {
              message = 'Punch Out - GPS અને Selfie સેટઅપ બાકી છે';
            }),
            child: const Text('PUNCH OUT'),
          ),
          const SizedBox(height: 20),
          FilledButton.tonal(
            onPressed: () => setState(() {
              message = 'Lunch Token - Server setup બાકી છે';
            }),
            child: const Text('LUNCH TOKEN'),
          ),
          FilledButton.tonal(
            onPressed: () => setState(() {
              message = 'Dinner Token - Server setup બાકી છે';
            }),
            child: const Text('DINNER TOKEN'),
          ),
          const SizedBox(height: 20),
          Text(message),
        ],
      ),
    );
  }
}
