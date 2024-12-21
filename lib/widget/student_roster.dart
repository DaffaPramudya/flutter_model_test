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
      body: Column(
        children: <Widget>[
          ListTile(
            title: const Text('Student 1'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Name: aaa'),
                Text('Address: a'),
                Text('Email: a@a.com'),
              ],
            ),
            tileColor: Colors.redAccent,
          ),
          const SizedBox(height: 8),
          ListTile(
            title: const Text('Student 2'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Name: bbb'),
                Text('Address: b'),
                Text('Email: b@b.com'),
              ],
            ),
            tileColor: Colors.cyanAccent,
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
