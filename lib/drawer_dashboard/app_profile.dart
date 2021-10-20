import 'package:flutter/material.dart';
import 'package:kabir_app/Shared/constant.dart';
import 'package:kabir_app/Shared/routes.dart';
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
                    'Starline Bid History',
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
                  color: Colors.black,
                  height: 172,
                  child: Column(
                    children: [
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: InkWell(onTap: (){
                            Navigator.pushNamed(context, Routes.ACCOUNT_DETAILS);
                          },
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2.35,
                              height: MediaQuery.of(context).size.height / 11,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Bank\nDetails',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Expanded(child: Container()),
                                    Icon(
                                      Icons.wallet_giftcard,
                                      size: 32,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: InkWell(onTap: (){
                            Navigator.pushNamed(context, Routes.PAYTM_DETAILS);
                          },
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2.35,
                              height: MediaQuery.of(context).size.height / 11,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Paytm\nDetails',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Expanded(child: Container()),
                                    Icon(
                                      Icons.wallet_giftcard,
                                      size: 32,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                      Row(children: [
                        Row(children: [
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: InkWell(onTap: (){
                              Navigator.pushNamed(context, Routes.GOOGLEPAY_DETAILS);
                            },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2.35,
                                height: MediaQuery.of(context).size.height / 11,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Googlepay\nDetails',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      Expanded(child: Container()),
                                      Icon(
                                        Icons.wallet_giftcard,
                                        size: 32,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: InkWell(onTap: (){
                              Navigator.pushNamed(context, Routes.PHONEPE_DETAILS);
                            },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2.35,
                                height: MediaQuery.of(context).size.height / 11,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Phonepe\nDetails',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      Expanded(child: Container()),
                                      Icon(
                                        Icons.wallet_giftcard,
                                        size: 32,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  child: Center(
                      child: Text(
                        'CHANGE NOW',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Constant.textColor),
                      )),
                  decoration: BoxDecoration(
                      color: Constant.primaryColor,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
