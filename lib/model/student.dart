class Student{
  int? id;
  String? studentName;
  String? studentAddress;
  String? studentEmail;

  static const String TABLE_STUDENT = 'student';
  static const String COLUMN_ID = '_id';
  static const String COLUMN_NAME = 'name';
  static const String COLUMN_ADDRESS = 'address';
  static const String COLUMN_EMAIL = 'email';

  Map<String, Object?> toMap(){
    var map = <String, Object?>{
      COLUMN_NAME : studentName,
      COLUMN_ADDRESS : studentAddress,
      COLUMN_EMAIL : studentEmail
    };
    if (id != null) {
      map[COLUMN_ID] = id;
    }
    return map;
  }

  Student.fromMap(Map<String, Object?> map){
    id = map[COLUMN_ID] as int;
    studentName = map[COLUMN_NAME] as String;
    studentAddress = map[COLUMN_ADDRESS] as String;
    studentEmail = map[COLUMN_EMAIL] as String;
  }
}