import 'package:flutter/material.dart';

import 'constant.dart';
import 'core/routers/routers.dart';
import 'features/cart_list/view.dart';
import 'features/chat/view.dart';
import 'features/checkout/view.dart';
import 'features/filter/view.dart';
import 'features/home/start.dart';
import 'features/home/view.dart';
import 'features/otp/view.dart';
import 'features/prodcut_detail/view.dart';
import 'features/profile/view.dart';
import 'features/register/view.dart';
import 'features/signin/view.dart';
import 'features/splash/view.dart';
import 'features/welcome/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kRedClr,
        canvasColor: kWhiteClr,
      ),
      navigatorKey: navigatorKey,
      onGenerateRoute: onGenerateRoute,
      home: StartView(),
    );
  }
}
