const String sCodeWrong = """class User {
  String name;
  String email;

  void saveUser() {
    // Code to save user data to database
  }

  void sendWelcomeEmail() {
    // Code to send a welcome email to the user
  }
}""";

const String sCodeRight = """class User {
  String name;
  String email;
}

class UserService {
  void saveUser(User user) {
    // Code to save user data to database
  }
}

class EmailService {
  void sendWelcomeEmail(String email) {
    // Code to send a welcome email to the user
  }
}""";
