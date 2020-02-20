import 'package:floor/floor.dart';

@Entity(tableName: 'Semester', primaryKeys: ["year", 'semester'])
class SemesterEntity {
  String year;
  String semester;

  SemesterEntity(this.year, this.semester);
}
