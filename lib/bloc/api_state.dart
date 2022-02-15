abstract class ApiState{}

class ApiStateValue extends ApiState{}
class ApiGetUser extends ApiState {
  String name;
  String userName;
  String email;
  ApiGetUser({
    required this.name,
    required this.userName,
    required this.email,
  });
}
