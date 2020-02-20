// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AppDatabase.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String name;

  final List<Migration> _migrations = [];

  Callback _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? join(await sqflite.getDatabasesPath(), name)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String> listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  UserDataDao _userDataDaoInstance;

  CourseTableDao _courseTableDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback callback]) async {
    return sqflite.openDatabase(
      path,
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `UserData` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `studentId` TEXT NOT NULL, `password` TEXT NOT NULL)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `CourseTable` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `day` INTEGER NOT NULL, `sectionNumber` INTEGER NOT NULL, `semesterId` INTEGER NOT NULL, `courseInfoId` INTEGER NOT NULL, FOREIGN KEY (`semesterId`) REFERENCES `Semester` (`year`, `semester`) ON UPDATE NO ACTION ON DELETE NO ACTION, FOREIGN KEY (`courseInfoId`) REFERENCES `CourseMainInfo` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION)');

        await callback?.onCreate?.call(database, version);
      },
    );
  }

  @override
  UserDataDao get userDataDao {
    return _userDataDaoInstance ??= _$UserDataDao(database, changeListener);
  }

  @override
  CourseTableDao get courseTableDao {
    return _courseTableDaoInstance ??=
        _$CourseTableDao(database, changeListener);
  }
}

class _$UserDataDao extends UserDataDao {
  _$UserDataDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _userDataEntityInsertionAdapter = InsertionAdapter(
            database,
            'UserData',
            (UserDataEntity item) => <String, dynamic>{
                  'id': item.id,
                  'studentId': item.studentId,
                  'password': item.password
                },
            changeListener),
        _userDataEntityUpdateAdapter = UpdateAdapter(
            database,
            'UserData',
            ['id'],
            (UserDataEntity item) => <String, dynamic>{
                  'id': item.id,
                  'studentId': item.studentId,
                  'password': item.password
                },
            changeListener),
        _userDataEntityDeletionAdapter = DeletionAdapter(
            database,
            'UserData',
            ['id'],
            (UserDataEntity item) => <String, dynamic>{
                  'id': item.id,
                  'studentId': item.studentId,
                  'password': item.password
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  static final _userDataMapper = (Map<String, dynamic> row) => UserDataEntity(
      row['studentId'] as String, row['password'] as String,
      id: row['id'] as int);

  final InsertionAdapter<UserDataEntity> _userDataEntityInsertionAdapter;

  final UpdateAdapter<UserDataEntity> _userDataEntityUpdateAdapter;

  final DeletionAdapter<UserDataEntity> _userDataEntityDeletionAdapter;

  @override
  Future<UserDataEntity> findUserDataById(int id) async {
    return _queryAdapter.query('SELECT * FROM UserData WHERE id = ?',
        arguments: <dynamic>[id], mapper: _userDataMapper);
  }

  @override
  Future<List<UserDataEntity>> findAllUserData() async {
    return _queryAdapter.queryList('SELECT * FROM UserData',
        mapper: _userDataMapper);
  }

  @override
  Stream<List<UserDataEntity>> findAllUserDataAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM UserData',
        tableName: 'UserData', mapper: _userDataMapper);
  }

  @override
  Future<void> deleteAll() async {
    await _queryAdapter.queryNoReturn('DELETE FROM UserData');
  }

  @override
  Future<void> insertItem(UserDataEntity item) async {
    await _userDataEntityInsertionAdapter.insert(
        item, sqflite.ConflictAlgorithm.replace);
  }

  @override
  Future<void> insertItems(List<UserDataEntity> items) async {
    await _userDataEntityInsertionAdapter.insertList(
        items, sqflite.ConflictAlgorithm.abort);
  }

  @override
  Future<void> updateItem(UserDataEntity item) async {
    await _userDataEntityUpdateAdapter.update(
        item, sqflite.ConflictAlgorithm.replace);
  }

  @override
  Future<void> updateItems(List<UserDataEntity> items) async {
    await _userDataEntityUpdateAdapter.updateList(
        items, sqflite.ConflictAlgorithm.abort);
  }

  @override
  Future<void> deleteItem(UserDataEntity item) async {
    await _userDataEntityDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteItems(List<UserDataEntity> items) async {
    await _userDataEntityDeletionAdapter.deleteList(items);
  }

  @override
  Future<void> replaceItem(UserDataEntity item) async {
    if (database is sqflite.Transaction) {
      await super.replaceItem(item);
    } else {
      await (database as sqflite.Database)
          .transaction<void>((transaction) async {
        final transactionDatabase = _$AppDatabase(changeListener)
          ..database = transaction;
        await transactionDatabase.userDataDao.replaceItem(item);
      });
    }
  }
}

class _$CourseTableDao extends CourseTableDao {
  _$CourseTableDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  static final _courseTableMapper = (Map<String, dynamic> row) =>
      CourseTableEntity(row['semesterId'] as int, row['courseInfoId'] as int);

  @override
  Future<CourseTableEntity> findByTime(int day, int sectionNumber) async {
    return _queryAdapter.query(
        'SELECT * FROM CourseTable WHERE day = ? AND sectionNumber = ?',
        arguments: <dynamic>[day, sectionNumber],
        mapper: _courseTableMapper);
  }
}
