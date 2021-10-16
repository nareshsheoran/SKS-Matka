class SignUpRequest {
 late  String name;
 late  String mobile;
 late   String email;
 late  String userName;
 late  String password;
 late   String user_Id;

  SignUpRequest( { required this.name,   required this.mobile,  required this.email,  required this.userName,   required this.password,  required this.user_Id});

  SignUpRequest.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    mobile = json['mobile'];
    email = json['email'];
    userName = json['userName'];
    user_Id = json['userId'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = Map();
    map['name'] = name;
    map['mobile'] = mobile;
    map['email'] = email;
    map['userName'] = userName;
    map['password'] = password;
    map['userId'] =user_Id;
    return map;
  }
}
