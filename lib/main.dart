import 'package:flutter/material.dart';

import 'package:kabir_app/Shared/routes.dart';
import 'package:kabir_app/page/front_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: FrontPage(),
      initialRoute: Routes.FRONT_PAGE,
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
