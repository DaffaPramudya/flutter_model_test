import 'package:flutter/material.dart';
import 'package:flutter_model_demo/widget/student_add.dart';

class StudentRosterWidget extends StatelessWidget {
  const StudentRosterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Roster'),
      ),
      body: const Column(
        children: <Widget>[
          ListTile(
            title: Text('Student 1'),
            tileColor: Colors.redAccent,
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: ListTile(
              title: Text('Student 2'),
              tileColor: Colors.cyanAccent,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _fabResponse(context),
        tooltip: 'Add Student',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  void _fabResponse(BuildContext context) {
    // Navigasi ke halaman baru saat tombol ditekan
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const StudentAddWidget()),
    );
  }
}
