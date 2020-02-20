import 'dart:async';

import 'package:floor/floor.dart';
import 'package:flutter_app/src/sql/entity/CourseTableEntity.dart';
import 'package:flutter_app/src/sql/entity/UserDataEntity.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'dao/CourseTableDao.dart';
import 'dao/UserDataDao.dart';
part 'AppDatabase.g.dart';
// 產生database命令 flutter packages pub run build_runner build

@Database(version: 1, entities: [UserDataEntity , CourseTableEntity])
abstract class AppDatabase extends FloorDatabase {
  UserDataDao get userDataDao;
  CourseTableDao get courseTableDao;

  static AppDatabase _instance;

  static Future<AppDatabase> getInstance() async{
    return _instance ?? await buildDatabase();
  }

  static Future<AppDatabase> buildDatabase() async{
    _instance = await $FloorAppDatabase
        .databaseBuilder('app.db')
        .build();
    return _instance;
  }


}