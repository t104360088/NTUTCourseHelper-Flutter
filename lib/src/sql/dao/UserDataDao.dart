import 'package:floor/floor.dart';
import 'package:flutter_app/src/sql/entity/UserDataEntity.dart';

@dao
abstract class UserDataDao {
  @Query('SELECT * FROM UserData WHERE id = :id')
  Future<UserDataEntity> findUserDataById(int id);

  @Query('SELECT * FROM UserData')
  Future<List<UserDataEntity>> findAllUserData();

  @Query('SELECT * FROM UserData')
  Stream<List<UserDataEntity>> findAllUserDataAsStream();

  @Query("DELETE FROM UserData")
  Future<void> deleteAll();

  @Insert(onConflict : OnConflictStrategy.REPLACE)
  Future<void> insertItem(UserDataEntity item);

  @insert
  Future<void> insertItems(List<UserDataEntity> items);

  @Update(onConflict : OnConflictStrategy.REPLACE)
  Future<void> updateItem(UserDataEntity item);

  @update
  Future<void> updateItems(List<UserDataEntity> items);

  @delete
  Future<void> deleteItem(UserDataEntity item);

  @delete
  Future<void> deleteItems(List<UserDataEntity> items);

  @transaction
  Future<void> replaceItem(UserDataEntity item) async {
    await deleteAll();
    await insertItem(item);
  }


}