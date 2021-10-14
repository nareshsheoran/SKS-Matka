import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:kabir_app/Shared/constant.dart';
import 'package:kabir_app/model_request/signup_request.dart';
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
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Constant.primaryColor,
      body: Form(key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  height: 160,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/image/logo.jpg'),
                          fit: BoxFit.fill),
                      shape: BoxShape.rectangle),
                ),
                SizedBox(height: 16),
                TextFormField(
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(

                      hintText: 'Full Name',
                      errorStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(fontSize: 16, color: Colors.white),
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
                      errorStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    // ignore: missing_return
                    validator: (value) {
                      if ((value == null || value.isEmpty) ) {
                        return "Please Input valid Mobile No.";
                      }
                    }),
                SizedBox(height: 16),
                TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Email Id',
                      errorStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    // ignore: missing_return
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Input Email Id";
                      }
                    }),
                SizedBox(height: 16),
                TextFormField(
                    controller: userNameController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: 'User Name',
                      errorStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(fontSize: 16, color: Colors.white),
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
                      errorStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    // ignore: missing_return
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Input Password";
                      }
                    }),
  SizedBox(height: 16),
                TextFormField(
                    controller: userIdController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: 'id',
                      errorStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    // ignore: missing_return
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Input id";
                      }
                    }),

                SizedBox(height: 24,),
                Row(
                  children: [
                    InkWell(
                        onTap: () async {
                          await signUp();
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
                            );
                          }
                        },child: Text('Sign Up')),
                    SizedBox(width: 24),
                    Icon(Icons.forward)
                  ],
                )
              ],
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
    String userName = userNameController.text;
    String password = passwordController.text;
    String user_Id = userIdController.text;


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
    if (user_Id.isEmpty) {
      Fluttertoast.showToast(msg: "Please input id");
      return;
    }
    if (email.isEmpty) {
      Fluttertoast.showToast(msg: "Please input Email");
      return;
    }
    if (userName.isEmpty) {
      Fluttertoast.showToast(msg: "Please input UserName");
      return;
    }

    SignUpRequest request = SignUpRequest(
        name: name, mobile:mobile , password: password, email: email, userName: userName,user_Id:user_Id);

    var url = Uri.parse(
        'http://aikahosts.com/matka/Api/user/register');
    var response = await http.post(url, body: request.toJson());
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    Map<String, dynamic> map =
    jsonDecode(response.body) as Map<String, dynamic>;
    if (map != null && map['message'] != null) {
      Fluttertoast.showToast(msg: map['message']);

      if (response.statusCode == 200) {
        Navigator.pop(context);
      }
    }
  }
}
