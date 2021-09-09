import 'package:hello_world/Model/user.dart';

class UserService {
  List<User> getUsers() {
    var x = new User(id: 1, username: 'Erik', password: '123', email: '123');
    var y = new User(id: 2, username: 'Alex', password: '123', email: '123');
    var output = [x, y];
    return output;
  }
}
