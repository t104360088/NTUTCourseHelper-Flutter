import 'package:floor/floor.dart';
import 'package:flutter_app/src/sql/entity/CourseTableEntity.dart';

@dao
abstract class CourseTableDao {
  @Query('SELECT * FROM CourseTable WHERE day = :day AND sectionNumber = :sectionNumber')
  Future<CourseTableEntity> findByTime(int day , int sectionNumber);



}