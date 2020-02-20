import 'package:floor/floor.dart';
import 'package:flutter_app/src/sql/entity/CourseMainInfoEntity.dart';
import 'package:flutter_app/src/sql/entity/SemesterEntity.dart';

@Entity(
  tableName: 'CourseTable',
  foreignKeys: [
    ForeignKey(
        childColumns: ['semesterId'],
        parentColumns: ['year' , 'semester'],
        entity: SemesterEntity,
        onUpdate: ForeignKeyAction.NO_ACTION,
        onDelete: ForeignKeyAction.NO_ACTION),
    ForeignKey(
        childColumns: ['courseInfoId'],
        parentColumns: ['id'],
        entity: CourseMainInfoEntity,
        onUpdate: ForeignKeyAction.NO_ACTION,
        onDelete: ForeignKeyAction.NO_ACTION)
  ],
)
class CourseTableEntity {
  @PrimaryKey(autoGenerate: true)
  int id;

  @ColumnInfo(name: 'day', nullable: false)
  int day;

  @ColumnInfo(name: 'sectionNumber', nullable: false)
  int sectionNumber;

  @ColumnInfo(name: 'semesterId', nullable: false)
  int semesterId;

  @ColumnInfo(name: 'courseInfoId', nullable: false)
  int courseInfoId;

  CourseTableEntity(this.semesterId, this.courseInfoId);
}
