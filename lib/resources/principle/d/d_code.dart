const String dCodeWrong = """class User {}

class Database {
  void saveUser(User user) {
    // implement save user
  }
}

class UserService {
  final Database databaseManager; // Direct dependency on DatabaseManager
  UserService(this.databaseManager);

  void registerUser(User user) {
    databaseManager.saveUser(user);
  }
}""";

const String dCodeRight = """class User {}

abstract class Database {
  void saveUser(User user);
}

class MySqlDatabase implements Database {
  @override
  void saveUser(User user) {
    // implement save user with Mysql
  }
}

class UserService {
  Database database; // Dependency on the Database abstraction
  UserService(this.database); // Injecting the database implementation

  void registerUser(User user) {
    database.saveUser(user);
  }
}""";
