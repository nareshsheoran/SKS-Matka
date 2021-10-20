class SignUpRequest {
  late String name;
  late String mobile;
  late String email;
  late String user_id;
  late String password;

  SignUpRequest({
    required this.name,
    required this.mobile,
    required this.email,
    required this.user_id,
    required this.password,
  });

  SignUpRequest.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    mobile = json['mobile'];
    email = json['email'];
    user_id = json['user_id'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = Map();
    map['name'] = name;
    map['mobile'] = mobile;
    map['email'] = email;
    map['user_id'] = user_id;
    map['password'] = password;
    return map;
  }
}
