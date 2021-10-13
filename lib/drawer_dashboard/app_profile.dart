import 'package:flutter/material.dart';
import 'package:kabir_app/Shared/constant.dart';
import 'package:switcher_button/switcher_button.dart';

class AppProfile extends StatefulWidget {
  const AppProfile({Key? key}) : super(key: key);

  @override
  _AppProfileState createState() => _AppProfileState();
}

class _AppProfileState extends State<AppProfile> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.primaryColor,
        title: Text('App Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                      Radius.circular(5.0) //         <--- border radius here
                      ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'App Notification',
                        style: TextStyle(color: Constant.textColor),
                      ),
                      SwitcherButton(
                        offColor: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                      Radius.circular(5.0) //         <--- border radius here
                      ),
                  border: Border.all(
                    color: Colors.red, //                   <--- border color
                    width: 5.0,
                  ),
                  color: Constant.primaryColor,
                ),
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Fullname',
                        style: TextStyle(color: Constant.textColor),
                      ),
                      Text(
                        'NARESH',
                        style: TextStyle(color: Constant.textColor),
                      ),
                      Divider(
                        height: 8,
                        thickness: 1,
                        color: Colors.black,
                      ),
                      Text(
                        'Username',
                        style: TextStyle(color: Constant.textColor),
                      ),
                      Text(
                        'SHEORAN',
                        style: TextStyle(color: Constant.textColor),
                      ),
                      Divider(
                        height: 8,
                        thickness: 1,
                        color: Colors.black,
                      ),
                      Text(
                        'Mobile No.',
                        style: TextStyle(color: Constant.textColor),
                      ),
                      Text(
                        '7027768268',
                        style: TextStyle(color: Constant.textColor),
                      ),
                      Divider(
                        height: 8,
                        thickness: 1,
                        color: Colors.black,
                      ),
                      Text(
                        'Email Id',
                        style: TextStyle(color: Constant.textColor),
                      ),
                      Text(
                        'nsirsi1999@gmail.com',
                        style: TextStyle(color: Constant.textColor),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(5.0) //         <--- border radius here
                        ),
                    color: Constant.primaryColor),
                child: ListTile(
                  title: Text(
                    'Standard Bid History',
                    style: TextStyle(color: Constant.textColor),
                  ),
                  trailing: Icon(Icons.account_balance_wallet_outlined),
                ),
              ),
              SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(5.0) //         <--- border radius here
                        ),
                    color: Constant.primaryColor),
                child: ListTile(
                  title: Text(
                    'Starlinr Bid History',
                    style: TextStyle(color: Constant.textColor),
                  ),
                  trailing: Icon(Icons.account_balance_wallet_outlined),
                ),
              ),
              SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(5.0) //         <--- border radius here
                        ),
                    color: Constant.primaryColor),
                child: ListTile(
                  title: Text(
                    'Gali Desawar Bid History',
                    style: TextStyle(color: Constant.textColor),
                  ),
                  trailing: Icon(Icons.account_balance_wallet_outlined),
                ),
              ),
              SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(5.0) //         <--- border radius here
                        ),
                    color: Constant.primaryColor),
                child: ListTile(
                  title: Text(
                    'Payment Method',
                    style: TextStyle(color: Constant.textColor),
                  ),
                  trailing: Icon(Icons.account_balance_wallet_outlined),
                ),
              ),
              SizedBox(height: 8),
              Container(
                  height: 100,
                  child: Column(
                    children: [
                      Row(children: [
                        Container(
                          child: Row(
                            children: [
                              Text('Bank\nDetails'),
                              Icon(Icons.wallet_giftcard)
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text('Bank\nDetails'),
                              Icon(Icons.wallet_giftcard)
                            ],
                          ),
                        ),
                      ]),
                      Row(children: [
                        Container(
                          child: Row(
                            children: [
                              Text('Bank\nDetails'),
                              Icon(Icons.wallet_giftcard)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              children: [
                                Text('Bank\nDetails'),
                                Icon(Icons.wallet_giftcard)
                              ],
                            ),
                          ),
                        ),
                      ]),
                    ],
                  )),
              SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(5.0) //         <--- border radius here
                        ),
                    color: Constant.primaryColor),
                child: ListTile(
                  title: Text(
                    'Change Password',
                    style: TextStyle(color: Constant.textColor),
                  ),
                  trailing: Icon(Icons.account_balance_wallet_outlined),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Card(
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: Row(
                  children: [
                    Text('New Password'),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 5.6,
                    ),
                    Expanded(
                        child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        hintText: 'New Password',
                        border: InputBorder.none,
                      ),
                    ))
                  ],
                ),
              )),
              SizedBox(
                height: 8,
              ),
              Card(
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Confirm Password'),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 8.8,
                      ),
                      Expanded(
                          child: TextField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          hintText: 'New Password',
                          border: InputBorder.none,
                        ),
                      ))
                    ],
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
