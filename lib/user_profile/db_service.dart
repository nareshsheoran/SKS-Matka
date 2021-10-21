import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class UserDbService {
  static late final UserDbService _instance;

  UserDbService._internal(){
    openDatabases();
  }

  static UserDbService getInstance() {
    if (_instance == null) {
      _instance = UserDbService._internal();
    }
    return _instance;
  }

  late Database database;
  String tableName = "userInfo";

  Future openDatabases() async {
    // Get a location using getDatabasesPath
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'user.db');
    try {
      database = await openDatabase(path, version: 1, onCreate: (db, version) {
        db.execute(
            "create table $tableName(email text primary key,name text not null)");
        print("table created");
      });
    }catch(e){
      print("openDatabases error:$e");
    }
  }

  Future addUserInfo(UserInfo userInfo) async {
    try {
      database.rawInsert("insert into $tableName values(?,?)",
          [userInfo.name, userInfo.email]);
    } catch (e) {
      print("addUserInfo $e");
    }
  }
}

class UserInfo {
  String? name;
  String? email;
}
