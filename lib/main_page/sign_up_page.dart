import 'dart:convert';

import 'package:SKS_Matka/Shared/constant.dart';
import 'package:SKS_Matka/model_request/signup_request.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: Images.bgImage, fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(height: 36),
                  Container(
                    height: 140,
                    width: MediaQuery.of(context).size.width / 1.5,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: Images.appLogoImage, fit: BoxFit.fill),
                        shape: BoxShape.rectangle),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                      controller: nameController,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: 'Full Name',
                        errorStyle: TextStyle(color: Constant.primaryColor),
                        hintStyle: TextStyle(
                            fontSize: 16, color: Constant.primaryColor),
                      ),
                      // ignore: missing_return
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Input User Name";
                        }
                      }),
                  SizedBox(height: 16),
                  TextFormField(
                      controller: mobileController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Mobile No.',
                        errorStyle: TextStyle(color: Constant.primaryColor),
                        hintStyle: TextStyle(
                            fontSize: 16, color: Constant.primaryColor),
                      ),
                      // ignore: missing_return
                      validator: (value) {
                        if ((value == null || value.isEmpty)) {
                          return "Please Input valid Mobile No.";
                        }
                      }),
                  SizedBox(height: 16),
                  TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'Email Id',
                        errorStyle: TextStyle(color: Constant.primaryColor),
                        hintStyle: TextStyle(
                            fontSize: 16, color: Constant.primaryColor),
                      ),
                      // ignore: missing_return
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Input Email Id";
                        }
                      }),
                  SizedBox(height: 16),
                  TextFormField(
                      controller: userController,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: 'User Name',
                        errorStyle: TextStyle(color: Constant.primaryColor),
                        hintStyle: TextStyle(
                            fontSize: 16, color: Constant.primaryColor),
                      ),
                      // ignore: missing_return
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Input User Name";
                        }
                      }),
                  SizedBox(height: 16),
                  TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        errorStyle: TextStyle(color: Constant.primaryColor),
                        hintStyle: TextStyle(
                            fontSize: 16, color: Constant.primaryColor),
                      ),
                      // ignore: missing_return
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Input Password";
                        }
                      }),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      InkWell(
                          onTap: () async {
                            await signUp();
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Processing Data')),
                              );
                            }
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Constant.primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          )),
                      SizedBox(width: MediaQuery.of(context).size.width / 1.5),
                      Icon(
                        Icons.forward,
                        color: Constant.primaryColor,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future signUp() async {
    String name = nameController.text;
    String mobile = mobileController.text;
    String email = emailController.text;
    String user_id = userController.text;
    String password = passwordController.text;

    if (name.isEmpty) {
      Fluttertoast.showToast(msg: "Please input name");
      return;
    }
    if (mobile.isEmpty) {
      Fluttertoast.showToast(msg: "Please input mobile");
      return;
    }
    if (password.isEmpty) {
      Fluttertoast.showToast(msg: "Please input password");
      return;
    }
    if (email.isEmpty) {
      Fluttertoast.showToast(msg: "Please input Email");
      return;
    }
    if (user_id.isEmpty) {
      Fluttertoast.showToast(msg: "Please input UserName");
      return;
    }

    SignUpRequest request = SignUpRequest(
        name: name,
        mobile: mobile,
        password: password,
        email: email,
        user_id: user_id);

    var url = Uri.parse('http://aikahosts.com/matka/Api/user/register');
    var response = await http.post(url, body: request.toJson());
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    Map<String, dynamic> map =
        jsonDecode(response.body) as Map<String, dynamic>;
    if (map != null && map['message'] != null) {
      Fluttertoast.showToast(msg: map['message']);

      if (response.statusCode == 200 &&
          map['message'] == "Registered Successfully") {
        Navigator.pop(context);
      }
    }
  }
}
