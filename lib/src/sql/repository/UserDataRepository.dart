import 'package:flutter_app/src/sql/AppDatabase.dart';

class UserDataRepository{
  UserDataRepository._privateConstructor(){
    _init();
  }

  static UserDataRepository _instance;

  factory UserDataRepository() {
    if(_instance == null) {
      _instance = UserDataRepository._privateConstructor();
    }
    return _instance;
  }

  void _init() async{
    AppDatabase database = await $FloorAppDatabase
        .databaseBuilder('flutter_database.db')
        .build();
  }


}