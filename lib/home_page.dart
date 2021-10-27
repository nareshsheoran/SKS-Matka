import 'package:flutter/material.dart';

import 'Shared/constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController userIdController = TextEditingController();
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
                ),SizedBox(height: MediaQuery.of(context).size.height / 7.5,),
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
                          hintText: 'Userid',
                          errorStyle: TextStyle(color: Colors.white),
                          hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
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
                        controller: userIdController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          errorStyle: TextStyle(color: Colors.white),
                          hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
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
                    Text(
                      'Sign In',
                      style: TextStyle(color: Constant.primaryColor, fontSize: 20),
                    ),
                    Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Constant.primaryColor),
                        child: Icon(
                          Icons.arrow_forward_outlined,
                          color: Colors.white,
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sign Up',
                      style: TextStyle(color: Constant.primaryColor, fontSize: 20),
                    ),
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Constant.primaryColor, fontSize: 20),
                    )
                  ],
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
