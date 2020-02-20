import 'package:floor/floor.dart';

@Entity(tableName: 'UserData')
class UserDataEntity {
  @PrimaryKey(autoGenerate: true)
  int id;

  @ColumnInfo(name: 'studentId', nullable: false)
  String studentId;

  @ColumnInfo(name: 'password', nullable: false)
  String password;

  UserDataEntity(this.studentId, this.password , {this.id}){
    id = id ?? 0;
  }
}