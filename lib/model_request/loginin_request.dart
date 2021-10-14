class LoginRequest {
 late String userId;
   late String password;

  LoginRequest({required this.userId, required this.password});

  LoginRequest.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = Map();
    map['userId'] = userId;
    map['password'] = password;
    return map;
  }
}
