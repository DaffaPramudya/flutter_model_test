import 'package:flutter/material.dart';

class StudentAddWidget extends StatelessWidget {
  const StudentAddWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle bstyle =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Student Form'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Student Name'),
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Student Address'),
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Student E-mail'),
            ),
            ElevatedButton(
              onPressed: _addStudent,
              style: bstyle,
              child: const Text('Elevated Button'),
            ),
          ],
        ),
      ),
    );
  }
  void _addStudent() {}
}

