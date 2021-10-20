class LoginRequest {
  late String user_id;
  late String password;

  LoginRequest({required this.user_id, required this.password});

  LoginRequest.fromJson(Map<String, dynamic> json) {
    user_id = json['user_id'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = Map();
    map['user_id'] = user_id;
    map['password'] = password;
    return map;
  }
}
