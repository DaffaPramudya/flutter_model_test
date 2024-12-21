import 'package:sqflite/sqflite.dart';
import 'student.dart';
import 'package:flutter_model_demo/config.dart';

class StudentProvider {
  Database? db;

  Future open(String path) async {
    db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('''
        create table ${Student.TABLE_STUDENT} ( 
          ${Student.COLUMN_ID} integer primary key autoincrement, 
          ${Student.COLUMN_NAME} text not null,
          ${Student.COLUMN_ADDRESS} text not null,
          ${Student.COLUMN_EMAIL} text not null,
        )
      ''');
    });
  }
  Future<Student> insert(Student student) async {
    student.id = await db?.insert(Student.TABLE_STUDENT, student.toMap());
    return student;
  }

  Future<Student?> getStudent(int id) async {
    List<Map<String, Object?>>? maps = (await db?.query(Student.TABLE_STUDENT,
        columns: [Student.COLUMN_ID, Student.COLUMN_NAME, Student.COLUMN_ADDRESS, Student.COLUMN_EMAIL],
        where: '${Student.COLUMN_ID} = ?',
        whereArgs: [id]));
    if (maps!.isNotEmpty) {
      return Student.fromMap(maps.first);
    }
    return null;
  }

  Future<int?> delete(int id) async {
    return await db?.delete(Student.TABLE_STUDENT, where: '${Student.COLUMN_ID} = ?', whereArgs: [id]);
  }

  Future<int?> update(Student student) async {
    return await db?.update(Student.TABLE_STUDENT, student.toMap(),
        where: '${Student.COLUMN_ID} = ?', whereArgs: [student.id]);
  }

  Future close() async => db?.close();
}
