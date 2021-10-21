import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kabir_app/Shared/constant.dart';
import 'package:kabir_app/Shared/routes.dart';
import 'package:kabir_app/model_request/loginin_request.dart';
import 'package:http/http.dart' as http;
import 'package:kabir_app/user_profile/service/user_profile_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController userIdController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 7.5,
              ),
              Container(
                height: 160,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image/logo.jpg'),
                        fit: BoxFit.fill),
                    shape: BoxShape.rectangle),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 7.5,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Constant.primaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                      controller: userIdController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'User Id',
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 20),
                        errorStyle: TextStyle(color: Colors.white),
                        hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      // ignore: missing_return
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Input UserID";
                        }
                      }),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Constant.primaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',contentPadding:
                      EdgeInsets.symmetric(horizontal: 20),
                        errorStyle: TextStyle(color: Colors.white),
                        hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      // ignore: missing_return
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Input Password";
                        }
                      }),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 10.6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(onTap: () {
                    login(context);
                  },
                    child: Text(
                      'Sign In',
                      style:
                          TextStyle(color: Constant.primaryColor, fontSize: 20),
                    ),
                  ),InkWell(onTap: (){
                    Navigator.pushNamed(context, Routes.HOME_PAGE);
                  },
                    child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Constant.primaryColor),
                        child: Icon(
                          Icons.arrow_forward_outlined,
                          color: Colors.white,
                        )),
                  ),

                ],
              ),Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(onTap: (){
                    Navigator.pushNamed(context, Routes.SIGNUP_PAGE);
                  },
                    child: Text(
                      'Sign Up',
                      style:
                      TextStyle(color: Constant.primaryColor, fontSize: 20),
                    ),
                  ),
                  InkWell(onTap: (){
                    Navigator.pushNamed(context, Routes.GAME_RUNNING);
                  },
                    child: Text(
                      'Forgot Password?',
                      style:
                      TextStyle(color: Constant.primaryColor, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }



  Future login(BuildContext context) async {
    String userId = userIdController.text;
    String password = passwordController.text;

    if (userId.isEmpty) {
      Fluttertoast.showToast(msg: "Please input userId");
      return;
    }
    if (password.isEmpty) {
      Fluttertoast.showToast(msg: "Please input password");
      return;
    }

    LoginRequest request = LoginRequest(user_id: userId, password: password);

    var url = Uri.parse(
        'http://aikahosts.com/matka/Api/user/login');
    var response = await http.post(url, body: request.toJson());
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    Map<String, dynamic> map =
    jsonDecode(response.body) as Map<String, dynamic>;

    if (map != null) {
      Fluttertoast.showToast(msg: map['message']);
      if (response.statusCode == 200 &&
          map['message'] == "Login Successfully") {
        Navigator.pushNamed(context, Routes.HOME_PAGE);
      }
    }
  }
}
