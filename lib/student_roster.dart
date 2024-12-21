import 'package:flutter/material.dart';
import 'package:flutter_model_demo/student_add.dart';

class StudentRosterWidget extends StatelessWidget {
  const StudentRosterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
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

      FloatingActionButton(
        onPressed: () => _fabResponse(context),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    ]);
  }

  void _fabResponse(BuildContext context) {
    //TODO: after the button was clicked, navigate to new Page
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context)=> const StudentAddWidget())
    );
  }
}
